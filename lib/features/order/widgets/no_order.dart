import 'package:flutter/material.dart';
import 'package:gap_here/gap_here.dart';
import 'package:iyo_grocery_app/core/assets.gen.dart';
import 'package:vector_graphics/vector_graphics.dart';

import '../../../core/pallete.dart';

class NoOrder extends StatelessWidget {
  const NoOrder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          VectorGraphic(
            colorFilter: const ColorFilter.mode(Pallete.grey, BlendMode.srcIn),
            width: 120,
            loader: AssetBytesLoader(
              Assets.svgs.cartIcon,
            ),
          ),
          const GapHere(1),
          Text(
            'No orders yet',
            style: textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
          ),
          const GapHere(1),
          const Text(
            'Hit the blue button down below to create an order',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Pallete.greyText,
            ),
          ),
          const GapHere(4),
          ElevatedButton(onPressed: () {}, child: const Text('Start Ordering')),
        ],
      ),
    );
  }
}
