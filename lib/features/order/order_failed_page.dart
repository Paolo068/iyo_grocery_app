import 'package:flutter/material.dart';
import 'package:gap_here/gap_here.dart';
import 'package:iyo_grocery_app/core/assets.gen.dart';
import 'package:iyo_grocery_app/core/layouts/app_layout.dart';
import 'package:iyo_grocery_app/core/pallete.dart';

class OrderFailedPage extends StatelessWidget {
  const OrderFailedPage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(),
      body: AppLayout(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Assets.images.orderFailed.image(),
              const GapHere(3),
              Text(
                'Oops! Order Failed',
                style: textTheme.headlineSmall,
                textAlign: TextAlign.center,
              ),
              const GapHere(2),
              const Text(
                "Something went wrong. Your order could not be processed.",
                style: TextStyle(color: Pallete.greyText),
                textAlign: TextAlign.center,
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Try Again  '),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Back to Home',
                  style: textTheme.bodyLarge,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
