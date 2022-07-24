import 'package:flutter/material.dart';

import '../modules/modules.dart';

class AppRoutes {
  static const String initialRoute = '/';

  static get routes => <String, WidgetBuilder>{
        initialRoute: (context) => const LoginPage(),
      };
}
