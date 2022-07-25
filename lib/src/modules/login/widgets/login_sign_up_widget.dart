import 'package:flutter/material.dart';
import '../../../shared/shared.dart';

class LoginSignUpWidget extends StatelessWidget {
  const LoginSignUpWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
        children: [
          TextSpan(
            text: 'Não tem conta? ',
            style: TextStyle(
              color: AppColors.blue[700],
            ),
          ),
          TextSpan(
            text: 'Cadastre-se',
            style: TextStyle(color: AppColors.blue[500]),
          ),
        ],
      ),
    );
  }
}
