import 'package:flutter/material.dart';
import 'package:iyo_grocery_app/core/theme/app_theme.dart';
import 'package:iyo_grocery_app/features/login/login_page.dart';
import 'package:iyo_grocery_app/features/signup/location_setup_page.dart';

import 'features/signup/phone_code_verification_page.dart';

class IyoApp extends StatelessWidget {
  const IyoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      home: const Scaffold(
        resizeToAvoidBottomInset: false,
        body: LoginPage(),
      ),
    );
  }
}