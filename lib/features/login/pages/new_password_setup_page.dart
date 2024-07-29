import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:gap_here/gap_here.dart';
import 'package:iyo_grocery_app/core/assets.gen.dart';
import 'package:iyo_grocery_app/core/layouts/form_layout.dart';
import 'package:iyo_grocery_app/core/pallete.dart';
import 'package:iyo_grocery_app/features/login/pages/password_reset_successful_page.dart';

import '../../../core/shared/label_text.dart';

class NewPasswordSetupPage extends StatelessWidget {
  const NewPasswordSetupPage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: FormLayout(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // const GapHere(2),
            Center(child: Assets.images.iyoBlueLogo.image()),
            const GapHere(6),
            Text('Set a new password', style: textTheme.headlineSmall),
            const Text(
              'Create a new password. Ensure it differs from the previous ones for security',
              style: TextStyle(color: Pallete.labelText),
            ),
            const GapHere(4),
            FormBuilder(
              child: Flex(
                direction: Axis.vertical,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const LabelText('Password'),
                      FormBuilderTextField(
                        name: 'password',
                        obscureText: true,
                        decoration: const InputDecoration(
                            hintText: 'Type your new password', suffixIcon: Icon(Icons.visibility_off_outlined)),
                      ),
                    ],
                  ),
                  const GapHere(2),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const LabelText('Confirm password'),
                      FormBuilderTextField(
                        name: 'confirm-paswword',
                        obscureText: true,
                        decoration: const InputDecoration(
                            hintText: 'Confirm your password', suffixIcon: Icon(Icons.visibility_off_outlined)),
                      ),
                    ],
                  ),
                  const GapHere(4),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const PasswordResetSuccessfulPage()));
                    },
                    child: const Text('Update Password'),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
