import 'package:flutter/material.dart';
import 'package:gap_here/gap_here.dart';
import 'package:iyo_grocery_app/core/layouts/app_layout.dart';
import 'package:iyo_grocery_app/core/pallete.dart';

import '../../core/assets.gen.dart';

class ProfileTypeSetupPage extends StatefulWidget {
  const ProfileTypeSetupPage({super.key});

  @override
  State<ProfileTypeSetupPage> createState() => _ProfileTypeSetupPageState();
}

class _ProfileTypeSetupPageState extends State<ProfileTypeSetupPage> {
  bool isSelected = false;
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
            GestureDetector(
              onTap: () => setState(() {
                isSelected = !isSelected;
              }),
              child: ProfileTypeOption(
                text: 'Vendor',
                isSelected: isSelected,
              ),
            ),
            const GapHere(4),
            GestureDetector(
              onTap: () => setState(() {
                isSelected = !isSelected;
              }),
              child: ProfileTypeOption(
                text: 'Delivery person',
                isSelected: isSelected,
              ),
            ),
            const GapHere(4),
            GestureDetector(
              onTap: () => setState(() {
                isSelected = !isSelected;
              }),
              child: ProfileTypeOption(
                text: 'Customer',
                isSelected: isSelected,
              ),
            ),
            const Spacer(),
            Align(
              alignment: Alignment.bottomRight,
              child: ElevatedButton(
                onPressed: () {},
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

class ProfileTypeOption extends StatelessWidget {
  final String text;
  final bool isSelected;
  const ProfileTypeOption({
    super.key,
    required this.text,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return DecoratedBox(
      decoration: BoxDecoration(
          border: Border.all(color: isSelected ? Pallete.primary : Pallete.btnBorder),
          borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(text, style: textTheme.headlineSmall),
            DecoratedBox(
                position: DecorationPosition.foreground,
                decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: isSelected ? Pallete.primary : Pallete.btnBorder,
                    ),
                    shape: BoxShape.circle),
                child: CircleAvatar(
                  backgroundColor: isSelected ? Pallete.primary : Colors.transparent,
                  child: isSelected
                      ? const Icon(
                          Icons.check,
                          color: Colors.white,
                        )
                      : const SizedBox.shrink(),
                )),
          ],
        ),
      ),
    );
  }
}
