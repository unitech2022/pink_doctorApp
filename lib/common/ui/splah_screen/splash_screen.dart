import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset("assets/images/backround.png",
              fit: BoxFit.fill,
              height: double.infinity,
              width: double.infinity),
          Positioned(
              right: -70,
              bottom: 126,
              child: Image.asset(
                "assets/images/logo_splash.png",
                height: 350,
                width: 350,
                fit: BoxFit.cover,
              ))
        ],
      ),
    );
  }
}
