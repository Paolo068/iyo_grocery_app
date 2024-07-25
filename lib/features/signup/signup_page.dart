import 'package:flutter/material.dart';
import 'package:iyo_grocery_app/core/assets.gen.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Grocery image
            SizedBox(
              height: 300,
              child: Expanded(
                child: Assets.images.signupBanner.image(),
              ),
            ),

            // Title
            const Text(
              'All your groceries\nwith Iyo',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),

            // Phone number input
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  // Flag widget would go here
                  Assets.images.cmrFlag.image(width: 30),
                  const SizedBox(width: 10),
                  const Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter phone number',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // Next button
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                padding: const EdgeInsets.symmetric(vertical: 15),
              ),
              child: const Text('Next'),
            ),
            const SizedBox(height: 20),

            // Social media options
            const Text('Or connect with social media', textAlign: TextAlign.center),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Google button
                OutlinedButton(
                  child: const Text('G'),
                  onPressed: () {},
                ),
                // Apple button
                OutlinedButton(
                  child: const Text('Apple'),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
