import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:gap_here/gap_here.dart';
import 'package:iyo_grocery_app/core/assets.gen.dart';
import 'package:iyo_grocery_app/core/layouts/form_layout.dart';
import 'package:iyo_grocery_app/core/pallete.dart';
import 'package:iyo_grocery_app/features/signup/pages/profile_type_setup_page.dart';

import '../../../core/shared/label_text.dart';

class LocationSetupPage extends StatelessWidget {
  const LocationSetupPage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: FormLayout(
        child: Column(
          children: [
            Assets.images.locationSetup.image(),
            const GapHere(4),
            Text(
              'Select Your Location',
              style: textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const GapHere(2),
            const Text(
              "Switch on your location to stay in tune with what's happening in your area",
              textAlign: TextAlign.center,
              style: TextStyle(color: Pallete.greyText),
            ),
            const GapHere(10),
            FormBuilder(
              child: Flex(
                direction: Axis.vertical,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const LabelText('Your Zone'),
                      FormBuilderTextField(
                        name: 'zone',
                        initialValue: 'Douala',
                        decoration: const InputDecoration(suffixIcon: Icon(Icons.keyboard_arrow_down_rounded)),
                      ),
                    ],
                  ),
                  const GapHere(2),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const LabelText('Your Area'),
                      FormBuilderTextField(
                        name: 'area',
                        decoration: const InputDecoration(
                            hintText: 'Type your area here', suffixIcon: Icon(Icons.keyboard_arrow_down_rounded)),
                      ),
                    ],
                  ),
                  const GapHere(4),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const ProfileTypeSetupPage()));
                    },
                    child: const Text('Submit'),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
