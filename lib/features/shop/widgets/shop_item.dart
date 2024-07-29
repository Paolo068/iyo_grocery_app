import 'package:flutter/material.dart';
import 'package:gap_here/gap_here.dart';
import 'package:iyo_grocery_app/core/utils.dart';

import '../../../core/pallete.dart';

class ShopItem extends StatelessWidget {
  final Image image;
  const ShopItem({super.key, required this.image});

  @override
  Widget build(BuildContext context) {

    return Expanded(
      child: Container(
        height: Utils.screen(context).width * 0.6,
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
            image,
            const Text('Organic banana', style: TextStyle(fontWeight: FontWeight.bold)),
            const Text('1kg, Priceg', style: TextStyle(color: Pallete.greyText)),
            const GapHere(2),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text('300 xaf'),
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
      ),
    );
  }
}
