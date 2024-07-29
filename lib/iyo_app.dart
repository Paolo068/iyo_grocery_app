import 'package:flutter/material.dart';
import 'package:iyo_grocery_app/core/theme/app_theme.dart';

import 'features/welcome/welcome_page.dart';

class IyoApp extends StatelessWidget {
  const IyoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      home: const Scaffold(
        resizeToAvoidBottomInset: false,
        body: WelcomePage(),
      ),
    );
  }
}
