import 'package:bogo/core/utils/constants/app_sizes.dart';
import 'package:bogo/features/auth/screens/auth_home/widgets/social_icons.dart';
import 'package:flutter/material.dart';
import '../../../../core/utils/common/common_widgets/primary_button.dart';
import '../../../../core/utils/common/common_widgets/text_field.dart';
import '../../../../core/utils/constants/app_assets.dart';
import '../../../../core/utils/constants/app_colors.dart';
import '../../../../core/utils/constants/app_strings.dart';
import '../../../../core/utils/constants/app_styles.dart';
import '../sign_in/sign_in_screen.dart';

class AuthHomeScreen extends StatefulWidget {
  const AuthHomeScreen({super.key});

  @override
  State<AuthHomeScreen> createState() => _AuthHomeScreenState();
}

class _AuthHomeScreenState extends State<AuthHomeScreen> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: BAppColors.primary,
      body: SafeArea(
        child: SizedBox(
          height: screenHeight,
          width: screenWidth,
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: screenHeight,
              ),
              child: IntrinsicHeight(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    /// Top logo + corner
                    Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 280.0),
                          child: Image.asset(
                            AppAssets.cornerImage,
                            alignment: Alignment.topRight,
                            width: 150,
                            height: 150,
                          ),
                        ),
                        Positioned(
                          top: 80,
                          left: 125,
                          bottom: 0,
                          child: Center(
                            child: Image.asset(
                              AppAssets.signInLogo,
                              width: 150,
                              height: 150,
                            ),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height:BSizes.spaceBtwSections),

                    /// Title
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 14.0),
                      child: Column(
                        children: [
                          Text(
                            AppStrings.createYourAccount,
                            style: BAppStyles.poppins(
                              color: BAppColors.white,
                              fontSize: BSizes.fontSizeLIx,
                              weight: FontWeight.w700,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height:BSizes.spaceBtwSections),

                          /// Sign In Button
                          PrimaryButton(
                            backgroundColor: BAppColors.primary,
                            borderColor: BAppColors.lightGray300,
                            text: AppStrings.signInButton,
                            onPressed: () {
                              // Navigation ya action
                            },
                          ),

                          const SizedBox(height: BSizes.spaceBtwItems),

                          /// Login Button
                          PrimaryButton(
                            text: "Sign in",
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const SignInScreen(),
                                ),
                              );
                            },
                            backgroundColor: Colors.black,
                          ),

                        ],
                      ),
                    ),

                    const Spacer(),

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
                              iconPath: AppAssets.iphoneIcon,
                              text: AppStrings.apple,
                              containerColor: Colors.black,
                              textColor: Colors.white,
                              allowMultilineText: true,
                              contentPadding: const EdgeInsets.only(
                                top: 50,
                                right: 29,
                              ),
                              width: 140,
                              height: 180,
                              borderRadius: 30,
                              iconSize: 48,
                              onTap: () {},
                            ),
                          ),

                          /// Google (center, biggest)
                          Positioned(
                            left: 135,
                            child: SocialLoginButton(
                              iconPath: AppAssets.googleIcon,
                              text: AppStrings.google,
                              containerColor: BAppColors.googleContainerColor,
                              textColor: Colors.white,
                              allowMultilineText: true,
                              width: 250,
                              height: 250,
                              borderRadius: 30,
                              iconSize: 52,
                              contentPadding: const EdgeInsets.only(
                                top: 50,
                                right: 170,
                              ),
                              onTap: () {},
                            ),
                          ),

                          /// Facebook (right, medium)
                          Positioned(
                            right: 0,
                            bottom: 0,
                            child: SocialLoginButton(
                              iconPath: AppAssets.facebookIcon,
                              text: AppStrings.facebook,
                              containerColor: BAppColors.facebookContainarColor,
                              allowMultilineText: true,
                              textColor: Colors.white,
                              contentPadding: const EdgeInsets.only(
                                top: 50,
                                left: 12,
                                right: 12,
                              ),
                              width: 120,
                              height: 220,
                              borderRadius: 30,
                              iconSize: 48,
                              onTap: () {},
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
