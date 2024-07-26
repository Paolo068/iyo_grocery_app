import 'package:flutter/material.dart';

import '../pallete.dart';

class LabelText extends StatelessWidget {
  final String text;
  const LabelText(
    this.text, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(color: Pallete.labelText),
    );
  }
}
