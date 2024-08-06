import 'package:flutter/material.dart';
import 'package:gap_here/gap_here.dart';
import 'package:iyo_grocery_app/core/assets.gen.dart';
import 'package:iyo_grocery_app/core/shared/item_qty_handle_btn.dart';
import 'package:iyo_grocery_app/core/utils.dart';
import 'package:vector_graphics/vector_graphics.dart';

import '../../core/layouts/app_layout.dart';
import '../../core/pallete.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('My Cart'),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 10, left: 15, right: 15),
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
                isDismissible: false,
                backgroundColor: Colors.white,
                context: context,
                builder: (context) {
                  final textTheme = Theme.of(context).textTheme;

                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Checkout',
                              style: textTheme.headlineSmall,
                            ),
                            IconButton(onPressed: () => Navigator.pop(context), icon: const Icon(Icons.close)),
                          ],
                        ),
                        const GapHere(2),
                        CheckoutModalItem(
                            'Delivery',
                            Text(
                              'Select Method',
                              style: textTheme.bodyMedium,
                            )),
                        CheckoutModalItem(
                            'Payment',
                            VectorGraphic(
                              loader: AssetBytesLoader(Assets.svgs.mastercardIcon),
                            )),
                        CheckoutModalItem(
                            'Total Cost',
                            Text(
                              '300 XAF',
                              style: textTheme.bodyMedium,
                            )),
                        const Divider(
                          color: Pallete.boxBorderColor,
                        ),
                        const GapHere(1),
                        const Text.rich(
                            style: TextStyle(color: Pallete.greyText),
                            TextSpan(text: 'By placing an order you agree to our ', children: [
                              TextSpan(
                                  text: 'Terms', style: TextStyle(color: Pallete.dark, fontWeight: FontWeight.bold)),
                              TextSpan(text: ' and '),
                              TextSpan(
                                  text: 'Conditions',
                                  style: TextStyle(color: Pallete.dark, fontWeight: FontWeight.bold)),
                            ])),
                        const GapHere(4),
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text('Place Order'),
                        ),
                      ],
                    ),
                  );
                });
          },
          child: const Text('Checkout'),
        ),
      ),
      body: AppLayout(
          child: ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return const CartItem();
        },
        separatorBuilder: (BuildContext context, int index) {
          return const Divider();
        },
        itemCount: 10,
      )),
    );
  }
}

class CheckoutModalItem extends StatelessWidget {
  final String title;
  final Widget trailing;
  const CheckoutModalItem(
    this.title,
    this.trailing, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return ListTile(
      contentPadding: EdgeInsets.zero,
      minLeadingWidth: 0,
      shape: const Border(top: BorderSide(color: Pallete.boxBorderColor)),
      title: Text(title, style: textTheme.titleMedium?.copyWith(color: Colors.grey, fontWeight: FontWeight.w600)),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          trailing,
          const GapHere(3),
          const Icon(Icons.chevron_right_rounded),
        ],
      ),
    );
  }
}

class CartItem extends StatelessWidget {
  const CartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Stack(
      children: [
        Flex(
          direction: Axis.horizontal,
          // crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Center(child: Assets.images.items.pepper.image(width: Utils.screen(context).width * 0.2)),
            const GapHere(2),
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
                  const GapHere(1),
                  const ItemQtyHandleBtn(),
                ],
              ),
            ),
            const GapHere(2),
            const Flexible(child: Text('4300 xaf')),
          ],
        ),
        const Positioned(
            right: 1,
            child: Icon(
              Icons.close,
              color: Colors.grey,
            )),
      ],
    );
  }
}
