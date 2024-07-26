import 'package:flutter/material.dart';
import 'package:iyo_grocery_app/core/utils.dart';

class AppLayout extends StatelessWidget {
  final Widget child;
  const AppLayout({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: SafeArea(
        child: SingleChildScrollView(
          reverse: true,
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 20, Utils.getKbdHeight(context) + 10),
            child: child,
          ),
        ),
      ),
    );
  }
}
