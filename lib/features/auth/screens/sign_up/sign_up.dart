import 'package:bogo/features/auth/login/login_screen.dart';
import 'package:bogo/features/auth/screens/sign_up/widget/social_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../core/utils/constants/app_assets.dart';
import '../../../../core/utils/constants/app_colors.dart';
import '../../../../core/utils/constants/app_strings.dart';
import '../../../../core/utils/constants/app_styles.dart';
import '../../../../shared/widgets/primary_button/primary_button.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              /// Top logo + corner
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 157.0),
                    child: Image(
                      alignment: Alignment.topRight,
                      image: AssetImage(AppAssets.cornerImage),
                      width: 200,
                      height: 200,
                    ),
                  ),
                  Positioned(
                    left: 130,
                    bottom: 0,
                    child: Center(
                      child: SvgPicture.asset(
                        AppAssets.logo,
                        width: 42,
                        height: 42,
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 10),

              /// Title
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14.0),
                child: Column(
                  children: [
                    Text(
                      AppStrings.letYouIn,
                      style: AppStyles.poppins(
                        color: AppColors.white,
                        fontSize: 44,
                        weight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 25),

                    /// Sign In Button
                    PrimaryButton(
                      backgroundColor: AppColors.primary,
                      hasBorder: true,
                      borderColor: AppColors.white,
                      text: AppStrings.signIn,
                      onPressed: () {
                        // Navigation ya action
                      },
                    ),

                    const SizedBox(height: 12),

                    /// Login Button
                    PrimaryButton(
                      text: AppStrings.login,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(),));
                      },
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 40),

              /// Social Buttons Stack
              SizedBox(
                height: 320,
                width: double.infinity,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    /// Apple (left, smallest)
                    Positioned(
                      left: 0,
                      bottom: 0,
                      child: SocialLoginButton(
                        iconPath: AppAssets.apple,
                        text: AppStrings.continueWithApple,
                        containerColor: Colors.black,
                        textColor: Colors.white,
                        allowMultilineText: true,
                        contentPadding: EdgeInsets.only(
                          top: 50,
                          left: 0,
                          right: 29,
                        ),
                        width: 140,
                        height: 180,
                        borderRadius: 30,
                        iconSize: 48,
                        onTap: () {
                          // Handle Apple login
                        },
                      ),
                    ),

                    /// Google (center, biggest)
                    Positioned(
                      left: 115,
                      child: SocialLoginButton(
                        iconPath: AppAssets.google,
                        text: AppStrings.continueWithGoogle,
                        containerColor: AppColors.googleContainerColor,
                        textColor: Colors.white,
                        allowMultilineText: true,
                        width: 250,
                        height: 280,
                        borderRadius: 30,
                        iconSize: 52,
                        contentPadding: EdgeInsets.only(
                          top: 50,
                          left: 0,
                          right: 110,
                        ),
                        // 👈 isse upar shift hoga
                        onTap: () {},
                      ),
                    ),

                    /// Facebook (right, medium)
                    Positioned(
                      right: 0,
                      bottom: 0,
                      child: SocialLoginButton(
                        iconPath: AppAssets.facebook,
                        text: AppStrings.continueWithFacebook,
                        containerColor: AppColors.secondary,
                        allowMultilineText: true,
                        textColor: Colors.white,
                        contentPadding: EdgeInsets.only(
                          top: 50,
                          left: 12,
                          right: 12,
                        ),
                        width: 120,
                        height: 220,
                        borderRadius: 30,
                        iconSize: 48,
                        onTap: () {
                          // Handle Facebook login
                        },
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
