import 'package:flutter/material.dart';
import 'package:iyo_grocery_app/core/pallete.dart';

class CheckboxWidget extends StatelessWidget {
  final String title;
  const CheckboxWidget(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile.adaptive(
      activeColor: Pallete.green,
      contentPadding: EdgeInsets.zero,
      visualDensity: VisualDensity.compact,
      controlAffinity: ListTileControlAffinity.leading,
      value: true,
      onChanged: (v) {},
      title: Text(title),
      dense: true,
      checkboxShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}
