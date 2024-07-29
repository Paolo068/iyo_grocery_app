import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:gap_here/gap_here.dart';
import 'package:iyo_grocery_app/core/assets.gen.dart';
import 'package:iyo_grocery_app/core/layouts/app_layout.dart';
import 'package:iyo_grocery_app/features/login/pages/new_password_setup_page.dart';
import 'package:pinput/pinput.dart';

import '../../../core/pallete.dart';

class EmailCodeVerificationPage extends StatefulWidget {
  const EmailCodeVerificationPage({super.key});

  @override
  State<EmailCodeVerificationPage> createState() => _EmailCodeVerificationPageState();
}

class _EmailCodeVerificationPageState extends State<EmailCodeVerificationPage> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: AppLayout(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const GapHere(2),
            Center(child: Assets.images.iyoBlueLogo.image()),
            const GapHere(6),
            Text(
              'Check your email',
              style: textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.normal,
              ),
            ),
            const Text(
              'We sent a reset link to alpha...@gmail.com.\nPlease enter 4 digit code that mentioned in the email',
              style: TextStyle(color: Pallete.labelText),
            ),
            const GapHere(3),
            Pinput(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              defaultPinTheme: defaultPinTheme,
              focusedPinTheme: defaultPinTheme.copyDecorationWith(
                border: Border.all(color: Pallete.primary),
              ),
              validator: (s) {
                return s == '2222' ? null : 'Pin is incorrect';
              },
              pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
              showCursor: true,
              onCompleted: (pin) {},
            ),
            const Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const NewPasswordSetupPage()));
              },
              child: const Text('Verify Code'),
            ),
            const GapHere(1),
            Center(
              child: Text.rich(
                TextSpan(text: "Haven’t got the reset code yet? ", children: [
                  TextSpan(
                    recognizer: TapGestureRecognizer()..onTap = () {},
                    style: const TextStyle(color: Pallete.primary),
                    text: 'Resend code',
                  )
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }

  final defaultPinTheme = PinTheme(
    width: 56,
    height: 56,
    textStyle: const TextStyle(fontSize: 20, color: Color.fromRGBO(30, 60, 87, 1), fontWeight: FontWeight.w600),
    decoration: BoxDecoration(
      border: Border.all(color: Colors.grey.shade400),
      borderRadius: BorderRadius.circular(15),
    ),
  );
}
