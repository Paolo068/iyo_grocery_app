import 'package:flutter/material.dart';
import 'package:gap_here/gap_here.dart';
import 'package:iyo_grocery_app/core/app_layout.dart';
import 'package:pinput/pinput.dart';

import '../../core/pallete.dart';

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
      appBar: AppBar(),
      body: AppLayout(
        child: Stack(children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Enter your 4-digit code',
                style: textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.normal,
                ),
              ),
              const GapHere(4),
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
            ],
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Resend Code',
                    style: textTheme.titleMedium?.copyWith(color: Pallete.primary),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(60, 60),
                    shape: const CircleBorder(),
                  ),
                  onPressed: () {},
                  child: const Icon(Icons.arrow_forward_ios_rounded),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
