import 'package:flutter/material.dart';
import '../../../shared/shared.dart';

class LoginLogoWidget extends StatelessWidget {
  const LoginLogoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        FlutterLogo(size: 44),
        SizedBox(width: AppSpacer.x1),
        AppGradientText(
          'Flutter Networks',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          gradient: LinearGradient(
            colors: AppColors.primaryGradient,
          ),
        ),
      ],
    );
  }
}
