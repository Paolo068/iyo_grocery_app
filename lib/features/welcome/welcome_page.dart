import 'package:flutter/material.dart';
import 'package:gap_here/gap_here.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iyo_grocery_app/core/assets.gen.dart';
import 'package:iyo_grocery_app/core/utils.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      height: Utils.screen(context).height,
      width: Utils.screen(context).width,
      decoration: BoxDecoration(
        image: DecorationImage(
          colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.4), BlendMode.darken),
          fit: BoxFit.cover,
          image: AssetImage(
            Assets.images.welcomeBg.path,
          ),
        ),
      ),
      child: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Assets.images.iyoWhiteLogo.image(),
              const GapHere(3),
              Text(
                'Iyo',
                style: textTheme.displayLarge,
              ),
              const GapHere(4),
              Text(
                'Welcome\nto our store',
                textAlign: TextAlign.center,
                style: textTheme.displayLarge?.copyWith(fontSize: 45),
              ),
              Text(
                'Order your groceries in as fast as one hour',
                style: TextStyle(color: Colors.white, fontFamily: GoogleFonts.ibmPlexSerif().fontFamily),
              ),
              const GapHere(3),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Get Started'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
