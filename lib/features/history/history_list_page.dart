import 'package:flutter/material.dart';
import 'package:gap_here/gap_here.dart';
import 'package:iyo_grocery_app/core/layouts/app_layout.dart';

class HistoryListPage extends StatelessWidget {
  const HistoryListPage({super.key});

  @override
  Widget build(BuildContext context) {
    // final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('History'),
      ),
      body: const AppLayout(
        child: SingleChildScrollView(
          child: Column(
            children: [
              HistoryItem(),
              HistoryItem(),
              HistoryItem(),
              HistoryItem(),
            ],
          ),
        ),
      ),
    );
  }
}

class HistoryItem extends StatelessWidget {
  const HistoryItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      children: [
        const GapHere(4),
        const Align(
          alignment: Alignment.topRight,
          child: Text.rich(
            TextSpan(
              text: 'Receipt#:',
              style: TextStyle(color: Colors.red),
              children: [
                TextSpan(
                  text: ' 002',
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
        const GapHere(2),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Ordered items',
                    style: textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  const Text('Tomatoes'),
                  const Text('Eggs'),
                  const Text('Service charges'),
                  const Text('Delivery charges'),
                  const GapHere(1),
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Pcs', style: textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold)),
                  const Text('6'),
                  const Text(''),
                  const Text(''),
                  const Text(''),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text('Price', style: textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold)),
                const Text('885'),
                const Text('754'),
                const Text('156'),
                const Text('158'),
              ],
            ),
          ],
        ),
        Divider(
          color: Colors.red.shade200,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Total Amount', style: textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold)),
            Text('4500 XAF', style: textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold)),
          ],
        ),
        Divider(
          color: Colors.red.shade200,
        ),
      ],
    );
  }
}
