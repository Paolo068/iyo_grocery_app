import 'package:flutter/material.dart';
import 'package:gap_here/gap_here.dart';
import 'package:iyo_grocery_app/core/assets.gen.dart';
import 'package:iyo_grocery_app/core/layouts/app_layout.dart';
import 'package:vector_graphics/vector_graphics.dart';

import '../../core/pallete.dart';

class PaymentDetailPage extends StatefulWidget {
  const PaymentDetailPage({super.key});

  @override
  State<PaymentDetailPage> createState() => _PaymentDetailPageState();
}

class _PaymentDetailPageState extends State<PaymentDetailPage> {
  String paymentMethod = '';
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payment'),
        centerTitle: true,
        backgroundColor: const Color(0XFFF5F5F8),
      ),
      backgroundColor: const Color(0XFFF5F5F8),
      body: AppLayout(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const GapHere(3),
          Text(
            'Payment Method',
            style: textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w600),
          ),
          const GapHere(2),
          DecoratedBox(
            decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(18))),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RadioListTile.adaptive(
                    contentPadding: EdgeInsets.zero,
                    value: 'Card',
                    groupValue: paymentMethod,
                    onChanged: (value) {
                      paymentMethod = value.toString();
                      setState(() {});
                    },
                    fillColor: WidgetStatePropertyAll(
                      paymentMethod == 'Card' ? Pallete.primary : Colors.grey,
                    ),
                    title: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          width: 35,
                          height: 35,
                          child: DecoratedBox(
                            decoration: const BoxDecoration(
                                color: Color(0XFFF47B0A), borderRadius: BorderRadius.all(Radius.circular(10))),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: VectorGraphic(
                                loader: AssetBytesLoader(Assets.svgs.cardIcon),
                              ),
                            ),
                          ),
                        ),
                        const GapHere(2),
                        const Text('Card'),
                      ],
                    ),
                 
                  ),
                  const Divider(),
                  RadioListTile.adaptive(
                    contentPadding: EdgeInsets.zero,
                    value: 'Mobile Money',
                    groupValue: paymentMethod,
                    fillColor: WidgetStatePropertyAll(
                      paymentMethod == 'Mobile Money' ? Pallete.primary : Colors.grey,
                    ),
                    onChanged: (value) {
                      paymentMethod = value.toString();
                      setState(() {});
                    },
                    title: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          width: 35,
                          height: 35,
                          child: DecoratedBox(
                            decoration: const BoxDecoration(
                                color: Color(0XFFEB4796), borderRadius: BorderRadius.all(Radius.circular(10))),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: VectorGraphic(
                                loader: AssetBytesLoader(Assets.svgs.mobileIcon),
                              ),
                            ),
                          ),
                        ),
                        const GapHere(2),
                        const Text('Mobile Money'),
                      ],
                    ),
                 
                  ),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
