import 'package:flutter/material.dart';
import 'package:gap_here/gap_here.dart';
import 'package:iyo_grocery_app/core/assets.gen.dart';
import 'package:iyo_grocery_app/core/layouts/app_layout.dart';
import 'package:iyo_grocery_app/features/signup/pages/location_setup_page.dart';
import 'package:pinput/pinput.dart';

import '../../../core/pallete.dart';

class PhoneCodeVerificationPage extends StatefulWidget {
  const PhoneCodeVerificationPage({super.key});

  @override
  State<PhoneCodeVerificationPage> createState() => _PhoneCodeVerificationPageState();
}

class _PhoneCodeVerificationPageState extends State<PhoneCodeVerificationPage> {
  final defaultPinTheme = PinTheme(
    width: 56,
    height: 56,
    textStyle: const TextStyle(fontSize: 20, color: Color.fromRGBO(30, 60, 87, 1), fontWeight: FontWeight.w600),
    decoration: BoxDecoration(
      border: Border.all(color: Colors.grey.shade400),
      borderRadius: BorderRadius.circular(15),
    ),
  );

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
              'Enter your 4-digit code',
              style: textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.normal,
              ),
              
            ),
            const Text(
                'Please enter your the digits code you received by SMS to verify your phone number',
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const PhoneCodeVerificationPage()));
                  },
                  child: Text(
                    'Resend Code',
                    style: textTheme.titleMedium?.copyWith(color: Pallete.primary),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(50, 50),
                    shape: const CircleBorder(),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const LocationSetupPage()));
                  },
                  child: const Icon(Icons.chevron_right_rounded),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
