import 'package:flutter/material.dart';
import 'package:gap_here/gap_here.dart';
import 'package:iyo_grocery_app/core/assets.gen.dart';
import 'package:iyo_grocery_app/core/layouts/app_layout.dart';
import 'package:vector_graphics/vector_graphics.dart';

import '../../core/pallete.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(),
      body: AppLayout(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton.outlined(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.person_3_outlined,
                      size: 30,
                    ),
                  ),
                  const GapHere(6),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Amir Toukour',
                        style: textTheme.titleLarge,
                      ),
                      const Text('amir@gmail.com'),
                    ],
                  ),
                ],
              ),
              const GapHere(3),
              const Divider(color: Pallete.boxBorderColor),
              AccountListTile(Assets.svgs.orderIcon, 'Orders'),
              AccountListTile(Assets.svgs.idCardIcon, 'My Details'),
              AccountListTile(Assets.svgs.pinLocationIcon, 'Delivery Address'),
              AccountListTile(Assets.svgs.cardOutlinedIcon, 'Payment Methods'),
              AccountListTile(Assets.svgs.promoCodeIcon, 'Promo Code'),
              AccountListTile(Assets.svgs.bellIcon, 'Notifications'),
              AccountListTile(Assets.svgs.helpIcon, 'Help'),
              AccountListTile(Assets.svgs.aboutIcon, 'About'),
              const GapHere(5),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFFF2F3F2)),
                onPressed: () {},
                label: const Text(
                  'Logout',
                  style: TextStyle(color: Colors.red),
                ),
                icon: VectorGraphic(
                  loader: AssetBytesLoader(Assets.svgs.logoutIcon),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class AccountListTile extends StatelessWidget {
  final String title, iconPath;
  const AccountListTile(
    this.iconPath,
    this.title, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return ListTile(
      contentPadding: EdgeInsets.zero,
      minLeadingWidth: 0,
      shape: const Border(bottom: BorderSide(color: Pallete.boxBorderColor)),
      leading: VectorGraphic(
        loader: AssetBytesLoader(iconPath),
      ),
      title: Text(title, style: textTheme.titleMedium?.copyWith(color: Pallete.dark, fontWeight: FontWeight.w600)),
      trailing: const Icon(Icons.chevron_right_rounded),
    );
  }
}
