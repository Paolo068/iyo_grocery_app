import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:gap_here/gap_here.dart';
import 'package:iyo_grocery_app/core/assets.gen.dart';
import 'package:iyo_grocery_app/core/layouts/form_layout.dart';
import 'package:iyo_grocery_app/core/pallete.dart';
import 'package:iyo_grocery_app/features/login/pages/email_code_verification_page.dart';

import '../../../core/shared/label_text.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: FormLayout(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Assets.images.iyoBlueLogo.image()),
            const GapHere(6),
            Text('Forgot Password', style: textTheme.headlineSmall),
            const Text(
              'Please enter your email to reset password',
              style: TextStyle(color: Pallete.greyText),
            ),
            const GapHere(4),
            FormBuilder(
              child: Flex(
                direction: Axis.vertical,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const LabelText('Email'),
                      FormBuilderTextField(
                        name: 'email',
                        decoration: const InputDecoration(hintText: 'Enter your email here'),
                      ),
                    ],
                  ),
                  const GapHere(4),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const EmailCodeVerificationPage()));
                    },
                    child: const Text('Reset Password'),
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
