import 'package:flutter/material.dart';
import 'package:gap_here/gap_here.dart';
import 'package:iyo_grocery_app/core/layouts/app_layout.dart';
import 'package:iyo_grocery_app/core/shared/search_field.dart';

import '../../core/assets.gen.dart';
import '../../core/utils.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List items = [
      {
        'image': Assets.images.items.fruitsVegetables.path,
        'name': 'Fresh fruits & Vegetables',
        'color': Colors.green,
      },
      {
        'image': Assets.images.items.beverage.path,
        'name': 'Fresh fruits & Vegetables',
        'color': Colors.pinkAccent,
      },
      {
        'image': Assets.images.items.bakerySnacks.path,
        'name': 'Fresh fruits & Vegetables',
        'color': Colors.yellow,
      },
      {
        'image': Assets.images.items.oilGhee.path,
        'name': 'Fresh fruits & Vegetables',
        'color': Colors.orange,
      },
      {
        'image': Assets.images.items.restaurant.path,
        'name': 'Fresh fruits & Vegetables',
        'color': Colors.red,
      },
      {
        'image': Assets.images.items.meatFish.path,
        'name': 'Fresh fruits & Vegetables',
        'color': Colors.cyan,
      },
    ];
    return Scaffold(
      appBar: AppBar(),
      body: AppLayout(
        child: CustomScrollView(slivers: [
          SliverList(
            delegate: SliverChildListDelegate([
              const SearchField(),
              const SizedBox(height: 20),
            ]),
          ),
          SliverGrid.builder(
              itemCount: 6,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                mainAxisExtent: Utils.screen(context).height * 0.22,
              ),
              itemBuilder: (context, index) {
                final item = items[index];
                return ExploreCardItem(
                  image: item['image'],
                  name: item['name'],
                  color: item['color'],
                );
              }),
        ]),
      ),
    );
  }
}

class ExploreCardItem extends StatelessWidget {
  final String image, name;
  final Color color;
  const ExploreCardItem({
    super.key,
    required this.image,
    required this.name,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      decoration: BoxDecoration(
          color: color.withOpacity(0.1),
          border: Border.all(color: color),
          borderRadius: const BorderRadius.all(Radius.circular(18))),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image.asset(image,width: 90,),
          const GapHere(2),
          Text(
            name,
            style: const TextStyle(fontWeight: FontWeight.w600),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
