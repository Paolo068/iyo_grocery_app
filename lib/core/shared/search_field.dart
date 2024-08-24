import 'package:flutter/material.dart';
import 'package:gap_here/gap_here.dart';
import 'package:iyo_grocery_app/core/assets.gen.dart';
import 'package:iyo_grocery_app/core/shared/filter_page.dart';
import 'package:vector_graphics/vector_graphics.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Flexible(
          child: TextField(
            decoration: InputDecoration(
              fillColor: Color(0xFFF2F3F2),
              prefixIcon: Icon(
                Icons.search_rounded,
              ),
              hintText: 'Search for products',
            ),
          ),
        ),
        const GapHere(4),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const FilterPage(),
              ),
            );
          },
          child: VectorGraphic(
            loader: AssetBytesLoader(
              Assets.svgs.filterIcon,
            ),
          ),
        )
      ],
    );
  }
}
