import 'package:flutter/material.dart';
import 'package:gap_here/gap_here.dart';
import 'package:iyo_grocery_app/core/layouts/app_layout.dart';
import 'package:iyo_grocery_app/features/signup/pages/terms_of_service.dart';

import '../../../core/assets.gen.dart';
import '../widgets/profile_type_option.dart';

class ProfileTypeSetupPage extends StatefulWidget {
  const ProfileTypeSetupPage({super.key});

  @override
  State<ProfileTypeSetupPage> createState() => _ProfileTypeSetupPageState();
}

class _ProfileTypeSetupPageState extends State<ProfileTypeSetupPage> {
  String profileType = '';
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(),
      body: AppLayout(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Assets.images.iyoBlueLogo.image()),
            const GapHere(6),
            Text('Select an option', style: textTheme.titleLarge),
            const GapHere(3),
            ProfileTypeOption(
              text: 'Vendor',
              value: profileType,
              onTap: (value) => setState(() {
                profileType = value;
              }),
            ),
            const GapHere(4),
            ProfileTypeOption(
              text: 'Delivery person',
              value: profileType,
              onTap: (value) => setState(() {
                profileType = value;
              }),
            ),
            const GapHere(4),
            ProfileTypeOption(
              text: 'Customer',
              value: profileType,
              onTap: (value) => setState(() {
                profileType = value;
              }),
            ),
            const Spacer(),
            Align(
              alignment: Alignment.bottomRight,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const TermsOfService()));
                },
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  minimumSize: const Size(50, 50),
                ),
                child: const Icon(Icons.chevron_right_rounded),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
