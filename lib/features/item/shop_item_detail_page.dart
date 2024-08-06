import 'package:flutter/material.dart';
import 'package:gap_here/gap_here.dart';
import 'package:iyo_grocery_app/core/assets.gen.dart';
import 'package:iyo_grocery_app/core/layouts/app_layout.dart';
import 'package:iyo_grocery_app/core/pallete.dart';

import '../../core/shared/item_qty_handle_btn.dart';

class ShopItemDetailPage extends StatelessWidget {
  const ShopItemDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            width: double.infinity,
            child: Container(
                padding: const EdgeInsets.only(bottom: 20),
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.white, Color(0xFFF2F3F2)],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter),
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25), bottomRight: Radius.circular(25)),
                ),
                child: Assets.images.items.appleBig.image()),
          ),
          AppLayout(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Natural Red apple',
                  style: textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w600),
                ),
                const GapHere(1),
                Text(
                  '1kg, Price',
                  style: textTheme.titleMedium?.copyWith(color: Pallete.greyText),
                ),
                const GapHere(2),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const ItemQtyHandleBtn(),
                    Text(
                      '1000 xaf',
                      style: textTheme.titleLarge,
                    ),
                  ],
                ),
                const GapHere(2),
                const ExpansionTile(
                  collapsedShape: Border.symmetric(horizontal: BorderSide(color: Pallete.boxBorderColor)),
                  shape: Border.symmetric(horizontal: BorderSide(color: Pallete.boxBorderColor)),
                  title: Text(
                    'Product Detail',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      child: Text(
                        'Apples Are Nutritious. Apples May Be Good For Weight Loss. '
                        'Apples May Be Good For Your Heart. As Part Of A Healthful '
                        'And Varied Diet.',
                      ),
                    ),
                  ],
                ),
                ListTile(
                  title: FittedBox(
                      child: Text(
                    'From Carrefour market bonamoussadi',
                    style: textTheme.bodyLarge?.copyWith(color: Pallete.green),
                  )),
                  trailing: const Icon(Icons.chevron_right),
                ),
                const Divider(color: Pallete.boxBorderColor),
                ListTile(
                  title: const Text(
                    'Review',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ...List.generate(5, (index) => const Icon(Icons.star, color: Colors.orange)),
                      const Icon(Icons.chevron_right),
                    ],
                  ),
                ),
              ],
            ),
          )
        ]),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            padding: const EdgeInsets.symmetric(vertical: 16),
          ),
          onPressed: () {},
          child: const Text('Order now'),
        ),
      ),
    );
  }
}
