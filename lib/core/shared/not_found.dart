import 'package:flutter/material.dart';
import 'package:gap_here/gap_here.dart';
import 'package:iyo_grocery_app/core/assets.gen.dart';
import 'package:vector_graphics/vector_graphics.dart';

import '../pallete.dart';

class NotFound extends StatelessWidget {
  const NotFound({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          VectorGraphic(
            loader: AssetBytesLoader(
              Assets.svgs.searchIcon,
            ),
          ),
          const GapHere(1),
          Text(
            'Item not found',
            style: textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
          ),
          const GapHere(1),
          const Text(
            'Try searching the item with a different keyword.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Pallete.greyText,
            ),
          )
        ],
      ),
    );
  }
}
