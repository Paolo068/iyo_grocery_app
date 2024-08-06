import 'package:flutter/material.dart';
import 'package:gap_here/gap_here.dart';
import 'package:iyo_grocery_app/core/layouts/app_layout.dart';

class MyDetailPage extends StatelessWidget {
  const MyDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: AppLayout(
        child: Column(
          children: [
            Center(
              child: Column(
                children: [
                  IconButton.outlined(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.person_3_outlined,
                      size: 60,
                    ),
                  ),
                  const GapHere(1),
                  const Text('Your name')
                ],
              ),
            ),
            const GapHere(4),
            const UserInfoBoxItem('Amir Toukour', Icons.person_3_outlined),
            const UserInfoBoxItem('+237 678 45 32 69', Icons.phone_outlined),
            const UserInfoBoxItem('amir@gmail', Icons.mail_outline),
          ],
        ),
      ),
    );
  }
}

class UserInfoBoxItem extends StatelessWidget {
  final String name;
  final IconData iconData;
  const UserInfoBoxItem(
    this.name,
    this.iconData, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DecoratedBox(
          decoration:
              const BoxDecoration(color: Color(0xFFF5F4F8), borderRadius: BorderRadius.all(Radius.circular(18))),
          child: ListTile(
            title: Text(name),
            trailing: Icon(iconData),
          ),
        ),
        const GapHere(3),
      ],
    );
  }
}
