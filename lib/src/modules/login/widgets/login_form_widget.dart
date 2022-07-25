import 'package:flutter/material.dart';
import '../../../shared/shared.dart';
import '../login_controller.dart';
import 'login_button_widget.dart';

class LoginFormWidget extends StatefulWidget {
  const LoginFormWidget({Key? key}) : super(key: key);

  @override
  State<LoginFormWidget> createState() => _LoginFormWidgetState();
}

class _LoginFormWidgetState extends State<LoginFormWidget> {
  final _formKey = GlobalKey<FormState>();
  final _controller = LoginController();
  bool isEmailValid = false;
  bool isLoading = false;

  String? email;
  String? password;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          _LoginFormCard(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: AppColors.gray,
                  ),
                ),
                TextFormField(
                  onChanged: (value) {
                    email = value;

                    if (value.isNotEmpty && value.contains('@')) {
                      setState(() {
                        isEmailValid = true;
                      });
                    } else {
                      setState(() {
                        isEmailValid = false;
                      });
                    }
                  },
                  validator: (value) {
                    if (value != null && value.isEmpty) {
                      return 'Preencha o campo de email';
                    }

                    if (value != null &&
                        value.isNotEmpty &&
                        !value.contains('@')) {
                      return 'Preencha o campo de email corretamente';
                    }
                  },
                  decoration: InputDecoration(
                    labelText: 'Email',
                    suffixIcon: isEmailValid
                        ? Icon(
                            Icons.check_circle,
                            color: AppColors.blue[400],
                          )
                        : null,
                  ),
                ),
                const SizedBox(height: 16),
                TextFormField(
                  onChanged: (value) {
                    if (value.isNotEmpty && value.length > 6) {
                      password = value;
                    }
                  },
                  validator: (value) {
                    if (value != null && value.isEmpty) {
                      return 'Preencha o campo de senha';
                    }

                    if (value != null && value.isNotEmpty && value.length < 6) {
                      return 'Senha deve conter 6 ou mais caracteres';
                    }
                  },
                  decoration: const InputDecoration(
                    labelText: 'Senha',
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    MaterialButton(
                      onPressed: () {},
                      child: const Text(
                        'Esqueceu sua senha?',
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: AppSpacer.x3),
          isLoading
              ? const CircularProgressIndicator()
              : _LoginFormBottom(
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      setState(() {
                        isLoading = true;
                      });
                      _controller
                          .login(email: email!, password: password!)
                          .then((value) {
                        setState(() {
                          isLoading = false;
                        });
                        if (value) {
                          //TODO: navaga para tela inicial
                          //Navigator.of(context).pushNamed(HomePage.route);
                          debugPrint('navega para tela inicial');
                          SnackBar snackBar = const SnackBar(
                            content: Text('Login realizado com sucesso!'),
                          );

                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        }
                      });
                    }
                  },
                ),
        ],
      ),
    );
  }
}

class _LoginFormBottom extends StatelessWidget {
  const _LoginFormBottom({
    Key? key,
    this.onPressed,
  }) : super(key: key);

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text('Lembrar de mim'),
        LoginButtonWidget(onPressed: onPressed),
      ],
    );
  }
}

class _LoginFormCard extends StatelessWidget {
  const _LoginFormCard({Key? key, this.child}) : super(key: key);
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black.withOpacity(0.15),
            blurRadius: 32,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(
        vertical: AppSpacer.x3,
        horizontal: AppSpacer.x2,
      ),
      child: child,
    );
  }
}
