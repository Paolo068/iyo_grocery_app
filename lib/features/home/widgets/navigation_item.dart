import 'package:flutter/material.dart';
import 'package:vector_graphics/vector_graphics.dart';

import '../../../core/pallete.dart';

class NavigationItem extends StatelessWidget {
  final String label, icon;
  final Color selectedColor;
  const NavigationItem({
    super.key,
    required this.label,
    required this.icon,
    this.selectedColor = Pallete.green,
  });

  @override
  Widget build(BuildContext context) {
    return NavigationDestination(
      label: label,
      icon: VectorGraphic(
        loader: AssetBytesLoader(icon),
      ),
      selectedIcon: VectorGraphic(
        loader: AssetBytesLoader(icon),
        colorFilter: ColorFilter.mode(
          selectedColor,
          BlendMode.srcIn,
        ),
      ),
    );
  }
}
