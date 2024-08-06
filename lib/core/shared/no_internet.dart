import 'package:flutter/material.dart';
import 'package:gap_here/gap_here.dart';
import 'package:iyo_grocery_app/core/assets.gen.dart';
import 'package:vector_graphics/vector_graphics.dart';

import '../pallete.dart';

class NoInternet extends StatelessWidget {
  final VoidCallback onRetry;
  const NoInternet({
    super.key,
    required this.onRetry,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          VectorGraphic(
            loader: AssetBytesLoader(
              Assets.svgs.noInternetIcon,
            ),
          ),
          const GapHere(1),
          Text(
            'No internet Connection',
            style: textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
          ),
          const GapHere(1),
          const Text(
            'Your internet connection is currently not available please check or try again.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Pallete.greyText,
            ),
          ),
          const GapHere(4),
          ElevatedButton(onPressed: onRetry, child: const Text('Try again'))
        ],
      ),
    );
  }
}
