import 'package:flutter/material.dart';
import '../../shared/shared.dart';
import 'widgets/widgets.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  static String route = '/login';

  @override
  Widget build(BuildContext context) {
    // verifica se o teclado esta aberto
    final viewInsetsBottom = MediaQuery.of(context).viewInsets.bottom;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(AppSpacer.x3),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const LoginLogoWidget(),
                const LoginFormWidget(),
                // se o teclado estiver aberto, ocultar o widget
                // LoginSignUpWidget
                if (viewInsetsBottom == 0) const LoginSignUpWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
