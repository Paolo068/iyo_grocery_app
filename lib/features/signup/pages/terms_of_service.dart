import 'package:flutter/material.dart';
import 'package:gap_here/gap_here.dart';
import 'package:iyo_grocery_app/core/layouts/app_layout.dart';
import 'package:iyo_grocery_app/features/home/home_page.dart';

import '../widgets/terms_clause.dart';

class TermsOfService extends StatelessWidget {
  const TermsOfService({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('AGREEMENT', style: textTheme.bodySmall),
            Text(
              'Terms of service',
              style: textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
            ),
            Text('Last updated on 05/12/2024', style: textTheme.bodySmall),
          ],
        ),
      ),
      body: AppLayout(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ...List.generate(
                2,
                (index) => const TermsClause(),
              ),
              const GapHere(4),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
                },
                child: const Text('Accept & continue'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
