import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(
        fillColor: Color(0xFFF2F3F2),
        prefixIcon: Icon(
          Icons.search_rounded,
        ),
        hintText: 'Search for products',
      ),
    );
  }
}
