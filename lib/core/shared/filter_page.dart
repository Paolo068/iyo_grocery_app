import 'package:flutter/material.dart';
import 'package:gap_here/gap_here.dart';
import 'package:iyo_grocery_app/core/layouts/app_layout.dart';
import 'package:iyo_grocery_app/core/shared/checkbox_widget.dart';

class FilterPage extends StatelessWidget {
  const FilterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: const Icon(Icons.close),
        ),
        centerTitle: true,
        title: const Text('Filters'),
      ),
      body: DecoratedBox(
        decoration: const BoxDecoration(
          color: Color(0xFFF2F3F2),
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(18),
          ),
        ),
        child: AppLayout(
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Categories',
                  style: textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const GapHere(2),
                const CheckboxWidget('Eggs'),
                const CheckboxWidget('Vegetables'),
                const CheckboxWidget('Chips & Crisps'),
                const CheckboxWidget('Fruits'),
                const GapHere(4),
                Text(
                  'Vendor',
                  style: textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const GapHere(2),
                const CheckboxWidget('Carrefour Market'),
                const CheckboxWidget('Santa Lucia'),
                const CheckboxWidget('Marche Central'),
                const Spacer(),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Apply Filter'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
