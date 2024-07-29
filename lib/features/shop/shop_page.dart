import 'package:flutter/material.dart';
import 'package:gap_here/gap_here.dart';
import 'package:iyo_grocery_app/core/assets.gen.dart';
import 'package:iyo_grocery_app/core/layouts/app_layout.dart';
import 'package:iyo_grocery_app/features/shop/widgets/shop_item.dart';

import 'widgets/shop_headline.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: AppLayout(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const TextField(
                    decoration: InputDecoration(
                      fillColor: Color(0xFFF2F3F2),
                      prefixIcon: Icon(
                        Icons.search_rounded,
                      ),
                      hintText: 'Search for products',
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Assets.images.shopBanner.image(),
                  const SizedBox(
                    height: 40,
                  ),
                  const ShopHeadline(title: 'Exclusive Offer'),
                  const GapHere(2),
                  Row(
                    children: [
                      ShopItem(
                        image: Assets.images.items.banana.image(),
                      ),
                      const GapHere(4),
                      ShopItem(
                        image: Assets.images.items.apple.image(),
                      ),
                    ],
                  ),
                  const GapHere(2),
                  Row(
                    children: [
                      ShopItem(
                        image: Assets.images.items.pepper.image(),
                      ),
                      const GapHere(4),
                      ShopItem(
                        image: Assets.images.items.ginger.image(),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
