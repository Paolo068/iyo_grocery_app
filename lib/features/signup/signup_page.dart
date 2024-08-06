import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:gap_here/gap_here.dart';
import 'package:iyo_grocery_app/core/assets.gen.dart';
import 'package:iyo_grocery_app/core/layouts/form_layout.dart';
import 'package:iyo_grocery_app/core/pallete.dart';
import 'package:iyo_grocery_app/features/signup/pages/phone_setup_page.dart';

import '../../core/shared/label_text.dart';
import '../login/login_page.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

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
            Text('Sign Up', style: textTheme.headlineSmall),
            const Text(
              'Enter your email and password',
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
                      const LabelText('Username'),
                      FormBuilderTextField(
                        name: 'username',
                        initialValue: 'Amir Toukour',
                      ),
                    ],
                  ),
                  const GapHere(2),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const LabelText('Email'),
                      FormBuilderTextField(
                        name: 'email',
                        initialValue: 'imshuvo97@gmail.com',
                      ),
                    ],
                  ),
                  const GapHere(2),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const LabelText('Password'),
                      FormBuilderTextField(
                        name: 'password',
                        obscureText: true,
                        initialValue: 'Type your password here',
                        decoration: const InputDecoration(
                            hintText: 'Type your password', suffixIcon: Icon(Icons.visibility_off_outlined)),
                      ),
                    ],
                  ),
                  const GapHere(2),
                  Text.rich(
                    TextSpan(text: "By continuing you agree to our ", children: [
                      TextSpan(
                        recognizer: TapGestureRecognizer()..onTap = () {},
                        style: const TextStyle(color: Pallete.primary),
                        text: 'Terms of service',
                      ),
                      const TextSpan(text: " and "),
                      TextSpan(
                        recognizer: TapGestureRecognizer()..onTap = () {},
                        style: const TextStyle(color: Pallete.primary),
                        text: 'Privacy Policy.',
                      ),
                    ]),
                  ),
                  const GapHere(4),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const PhoneSetupPage()));
                    },
                    child: const Text('Submit'),
                  ),
                  const GapHere(2),
                  Text.rich(
                    TextSpan(text: "Already have an account? ", children: [
                      TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const LoginPage(),
                              ),
                            );
                          },
                        style: const TextStyle(color: Pallete.primary),
                        text: 'Login',
                      )
                    ]),
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
