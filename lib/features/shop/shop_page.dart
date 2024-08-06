import 'package:flutter/material.dart';
import 'package:gap_here/gap_here.dart';
import 'package:iyo_grocery_app/core/assets.gen.dart';
import 'package:iyo_grocery_app/core/layouts/app_layout.dart';
import 'package:iyo_grocery_app/core/shared/search_field.dart';
import 'package:iyo_grocery_app/core/utils.dart';
import 'package:iyo_grocery_app/features/shop/widgets/shop_item.dart';

import 'widgets/shop_headline.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    final itemList = [
      {'image': Assets.images.items.banana.path, 'name': 'Banana', 'price': '500'},
      {'image': Assets.images.items.apple.path, 'name': 'Apple', 'price': '300'},
      {'image': Assets.images.items.ginger.path, 'name': 'Ginger', 'price': '200'},
      {'image': Assets.images.items.pepper.path, 'name': 'Pepper', 'price': '100'},
    ];
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: AppLayout(
          child: CustomScrollView(
            slivers: [
              SliverList(
                  delegate: SliverChildListDelegate(
                [
                  const SearchField(),
                  const SizedBox(
                    height: 20,
                  ),
                  Assets.images.shopBanner.image(),
                ],
              )),
              const ShopHeadline(title: 'Exclusive Offer'),
              ItemListGridview(itemList: itemList),
              const ShopHeadline(title: 'Groceries'),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Container(
                      decoration: BoxDecoration(
                          color: const Color(0xFFF8A44C).withOpacity(0.2), borderRadius: BorderRadius.circular(18)),
                      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      child: Row(
                        children: [
                          Assets.images.shopItem.image(),
                          const GapHere(5),
                          Text(
                            'Pulses',
                            style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ItemListGridview extends StatelessWidget {
  const ItemListGridview({
    super.key,
    required this.itemList,
  });

  final List<Map<String, String>> itemList;

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
        itemCount: itemList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          mainAxisExtent: Utils.screen(context).height * 0.25,
        ),
        itemBuilder: (context, index) {
          final item = itemList[index];
          return ShopItem(
            image: item['image']!,
            name: item['name']!,
            price: item['price']!,
          );
        });
  }
}
