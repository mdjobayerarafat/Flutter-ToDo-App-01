import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:flutter/material.dart';
import '../screens/home.dart';
import 'package:lottie/lottie.dart';

class splashScreen extends StatelessWidget {
  const splashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterSplashScreen(
          useImmersiveMode: true,
          duration: const Duration(milliseconds: 2000),
          nextScreen:  Home(),
          backgroundColor: Colors.white,
          splashScreenBody: Center(
            child: Lottie.asset(
              "assets/images/lotti.json",
              repeat: false,
            ),
          ),
        );
  }
}