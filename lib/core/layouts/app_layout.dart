import 'package:flutter/material.dart';
import 'package:iyo_grocery_app/core/app_sizes.dart';

class AppLayout extends StatelessWidget {
  final Widget child;
  const AppLayout({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: SafeArea(
        child: Padding(
          padding: defaultAppPadding,
          child: child,
        ),
      ),
    );
  }
}
