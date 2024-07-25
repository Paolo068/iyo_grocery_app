import 'package:flutter/material.dart';
import 'package:iyo_grocery_app/features/signup/signup_page.dart';

class IyoApp extends StatelessWidget {
  const IyoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: SignupPage()),
    );
  }
}
