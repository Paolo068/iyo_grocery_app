import 'package:flutter/material.dart';
import 'package:gap_here/gap_here.dart';

import '../../../core/pallete.dart';

class ShopItem extends StatelessWidget {
  final String image;
  final String name;
  final String price;
  const ShopItem({
    super.key,
    required this.image,
    required this.name,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
      decoration: BoxDecoration(
        border: Border.all(color: Pallete.boxBorderColor),
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(image, width: 75, height: 75),
          Text(name, style: const TextStyle(fontWeight: FontWeight.w500)),
          const Text('1kg, Priceg', style: TextStyle(color: Pallete.greyText)),
          const GapHere(2),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('$price xaf'),
              Container(
                width: 32,
                height: 32,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(13), color: Pallete.green),
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
