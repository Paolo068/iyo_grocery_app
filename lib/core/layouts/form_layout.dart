import 'package:flutter/material.dart';

import '../app_sizes.dart';

class FormLayout extends StatelessWidget {
  final Widget child;
  const FormLayout({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: SafeArea(
        child: Padding(
          padding: defaultAppPadding,
          child: Center(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              reverse: true,
              child: child,
            ),
          ),
        ),
      ),
    );
  }
}
