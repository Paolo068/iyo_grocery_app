import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:gap_here/gap_here.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iyo_grocery_app/core/assets.gen.dart';
import 'package:iyo_grocery_app/core/pallete.dart';
import 'package:iyo_grocery_app/core/utils.dart';

import 'phone_code_verification_page.dart';

class PhoneSetupPage extends StatelessWidget {
  const PhoneSetupPage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              // Grocery image
              SizedBox.fromSize(
                size: Size.fromHeight(Utils.screen(context).height * 0.4),
                child: Image.asset(
                  Assets.images.signupBanner.path,
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Title

                    Text(
                      'All your groceries\nwith Iyo',
                      style: textTheme.headlineMedium?.copyWith(
                        fontWeight: FontWeight.normal,
                        fontFamily: GoogleFonts.ibmPlexSerif().fontFamily,
                      ),
                    ),
                    const GapHere(5),
                    FormBuilder(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Phone number'),
                          const GapHere(1),
                          FormBuilderTextField(
                            decoration: InputDecoration(
                              prefixIconConstraints: const BoxConstraints(minWidth: 30),
                              prefixIcon: Padding(
                                padding: const EdgeInsets.only(left: 15, right: 10),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Assets.images.cmrFlag.image(width: 30),
                                    const GapHere(0.1),
                                    const Icon(
                                      Icons.keyboard_arrow_down_rounded,
                                      color: Colors.grey,
                                    )
                                  ],
                                ),
                              ),
                              hintText: 'Enter phone number',
                            ),
                            name: 'phone',
                          ),
                        ],
                      ),
                    ),
                    const GapHere(4),

                    // Next button
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => const PhoneCodeVerificationPage()));
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                      ),
                      child: const Text('Next'),
                    ),
                    const GapHere(2),

                    // Social media options
                    Center(
                      child: Row(
                        children: [
                          const Expanded(child: Divider()),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              'Or connect with social media',
                              style: textTheme.bodyMedium?.copyWith(
                                color: Pallete.greyText,
                              ),
                            ),
                          ),
                          const Expanded(child: Divider()),
                        ],
                      ),
                    ),
                    const GapHere(2),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          // Google button
                          Expanded(
                            child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(3),
                                  ),
                                ),
                              ),
                              child: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 20),
                                  child: Assets.images.googleLogo.image(width: 25)),
                              onPressed: () {},
                            ),
                          ),
                          const GapHere(10),
                          // Apple button
                          Expanded(
                            child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(3),
                                  ),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 20),
                                child: Assets.images.appleLogo.image(width: 25),
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
