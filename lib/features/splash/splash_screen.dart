import 'package:bogo/core/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:BAppColors.backGroundColor,
      body: SafeArea(
        child: Stack(
          children: [
            // Centered logo
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Replace with your logo image
                  Image.asset(
                    "assets/images/app_logo.png",
                    width: 250,
                  ),
                ],
              ),
            ),

            // Loader at bottom
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: CircularProgressIndicator(
                  valueColor: const AlwaysStoppedAnimation<Color>(BAppColors.white),
                  strokeWidth: 5,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
