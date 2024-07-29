import 'package:flutter/material.dart';

import '../../../core/pallete.dart';

class ShopHeadline extends StatelessWidget {
  final String title, subtitle;
  final Color subtitleColor;
  const ShopHeadline({
    super.key,
    required this.title,
    this.subtitle = 'See all',
    this.subtitleColor = Pallete.green,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
        ),
        Text(
          subtitle,
          style: TextStyle(color: subtitleColor, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
