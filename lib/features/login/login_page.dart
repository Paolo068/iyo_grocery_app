import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:gap_here/gap_here.dart';
import 'package:iyo_grocery_app/core/assets.gen.dart';
import 'package:iyo_grocery_app/core/layouts/form_layout.dart';
import 'package:iyo_grocery_app/core/pallete.dart';
import 'package:iyo_grocery_app/features/home/home_page.dart';
import 'package:iyo_grocery_app/features/login/pages/forgot_password_page.dart';
import 'package:iyo_grocery_app/features/signup/signup_page.dart';

import '../../core/shared/label_text.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
            Text('Login', style: textTheme.headlineSmall),
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
                        name: 'paswword',
                        obscureText: true,
                        initialValue: 'Type your password here',
                        decoration: const InputDecoration(
                            hintText: 'Type your password', suffixIcon: Icon(Icons.visibility_off_outlined)),
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const ForgotPasswordPage()));
                      },
                      child: const Text('Forgot Password?'),
                    ),
                  ),
                  const GapHere(4),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
                    },
                    child: const Text('Submit'),
                  ),
                  const GapHere(2),
                  Text.rich(
                    TextSpan(text: "Don't have an account? ", children: [
                      TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SignupPage(),
                              ),
                            );
                          },
                        style: const TextStyle(color: Pallete.primary),
                        text: 'Sign Up',
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
