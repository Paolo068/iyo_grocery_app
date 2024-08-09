import 'package:flutter/material.dart';
import 'package:gap_here/gap_here.dart';
import 'package:iyo_grocery_app/core/assets.gen.dart';
import 'package:iyo_grocery_app/core/layouts/app_layout.dart';
import 'package:iyo_grocery_app/core/utils.dart';

import '../../core/pallete.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 10, left: 15, right: 15),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            padding: const EdgeInsets.symmetric(vertical: 16),
          ),
          onPressed: () {},
          child: const Text('Add all to cart'),
        ),
      ),
      appBar: AppBar(),
      body: AppLayout(
          child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return const FavoriteItem();
        },
        separatorBuilder: (BuildContext context, int index) {
          return const Divider();
        },
        itemCount: 10,
      )),
    );
  }
}

class FavoriteItem extends StatelessWidget {
  const FavoriteItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Flex(
      direction: Axis.horizontal,
      // crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Center(child: Assets.images.items.pepper.image(width: Utils.screen(context).width * 0.2)),
        const SizedBox(width: 20),
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Bell Pepper Red',
                style: textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w600),
              ),
              const GapHere(1),
              Text(
                '1kg, price',
                style: textTheme.bodyMedium?.copyWith(color: Pallete.greyText),
              ),
            ],
          ),
        ),
        const Flexible(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text('4300 xaf'),
              Icon(Icons.chevron_right_rounded),
            ],
          ),
        ),
      ],
    );
  }
}
