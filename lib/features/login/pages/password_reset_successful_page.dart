import 'package:flutter/material.dart';
import 'package:gap_here/gap_here.dart';
import 'package:iyo_grocery_app/core/layouts/app_layout.dart';

import '../../../core/assets.gen.dart';
import '../../../core/pallete.dart';
import '../login_page.dart';

class PasswordResetSuccessfulPage extends StatelessWidget {
  const PasswordResetSuccessfulPage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: AppLayout(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(child: Assets.images.successMark.image()),
              const GapHere(4),
              Text('Successful', style: textTheme.headlineSmall),
              const GapHere(2),
              const Text(
                'Congratulations! Your password has been changed. Click continue to login',
                textAlign: TextAlign.center,
                style: TextStyle(color: Pallete.labelText),
              ),
              const GapHere(4),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginPage(),
                      ),
                    );
                  },
                  child: const Text('Back to login')),
            ],
          ),
        ),
      ),
    );
  }
}
