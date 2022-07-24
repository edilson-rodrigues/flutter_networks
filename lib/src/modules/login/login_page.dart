import 'package:flutter/material.dart';
import '../../shared/shared.dart';
import 'widgets/widgets.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  static String route = '/login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(AppSpacer.x3),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                LoginLogoWidget(),
                LoginFormWidget(),
                Text('Não tem conta? Cadastre-se'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
