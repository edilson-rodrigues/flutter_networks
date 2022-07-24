import 'package:flutter/material.dart';

import '../shared.dart';

class AppThemeData {
  static AppThemeData instance = AppThemeData._();

  AppThemeData._();

  static get light => ThemeData(
        primarySwatch: AppColors.blue,
      );
}
