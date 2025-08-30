import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/utils/common/common_widgets/primary_button.dart';
import '../../../../core/utils/common/common_widgets/text_field.dart';
import '../../../../core/utils/constants/app_assets.dart';
import '../../../../core/utils/constants/app_colors.dart';
import '../../../../core/utils/constants/app_sizes.dart';
import '../../../../core/utils/constants/app_strings.dart';
import '../../../../core/utils/constants/app_styles.dart';
import '../../rgister_complete/register_complete_screen.dart';
import '../../terms_of_services/terms_and_condition.dart';
import '../auth_home/widgets/social_icon_widget.dart';
import '../sign_up/sign_up_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BAppColors.primary,
      body: SingleChildScrollView(

        child: Column(
          children: [
            /// Top logo + corner
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Center(

                child: Image.asset(
                  AppAssets.signInLogo,
                  width: 120,
                  height: 120,
                ),
              ),
            ),

            /// Form section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// Title
                  Text(
                    AppStrings.signinText,
                    style: BAppStyles.poppins(
                      color: BAppColors.white,
                      fontSize: BSizes.fontSizeLIx,
                      weight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: BSizes.spaceBtwSections),

                  /// Phone number field
                  CustomTextField(
                    hintText: AppStrings.yourPhoneNumber,
                    svgIcon: SvgPicture.asset(AppAssets.person),
                  ),
        SizedBox(height:BSizes.spaceBtwInputFields ,),
                  /// Password field
                  CustomTextField(
                    hintText: AppStrings.password,
                    svgIcon: SvgPicture.asset(AppAssets.lock),
                  ),

                  /// Remember Me + Forgot
                  const LoginOptionsRow(),

                  const SizedBox(height: BSizes.spaceBtwItems),

                  /// Sign In button
                  PrimaryButton(
                    text: AppStrings.signInButton,
                    onPressed: () {
                      // Handle sign in
                    },
                  ),

                  const SizedBox(height: BSizes.spaceBtwItems),

                  /// Social login row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: SocialButton(
                          color: BAppColors.facebookContainarColor,
                          iconPath: AppAssets.facebookIcon,
                          onTap: () {},
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: SocialButton(
                          color: BAppColors.googleContainerColor,
                          iconPath: AppAssets.googleIcon,
                          onTap: () {},
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: SocialButton(
                          color: BAppColors.black1000,
                          iconPath: AppAssets.iphoneIcon,
                          onTap: () {},
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                  /// Already have account row
                Container(
                  width: double.infinity,
                  height: 42,
                  decoration: BoxDecoration(
                    color: BAppColors.white.withOpacity(0.15),
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Row(
                    children: [
                      GestureDetector(
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 14.0),
                            child: Text(
                              AppStrings.alreadyHaveAnAccount,
                              style: BAppStyles.poppins(
                                color: BAppColors.white,
                                fontSize: 16,
                                weight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 18),

                      /// 👉 Custom inline button
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SignUpScreen(),
                              ),
                            );
                          },
                          child: Container(
                            height: 42, // match parent container height
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: BAppColors.black1000, // button background
                              borderRadius: BorderRadius.circular(14),
                            ),
                            child: Text(
                              AppStrings.logInButton,
                              style: BAppStyles.poppins(
                                color: Colors.white,
                                fontSize: 14,
                                weight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),

                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 25),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// ✅ Login Options Row with Checkbox
class LoginOptionsRow extends StatefulWidget {
  const LoginOptionsRow({super.key});

  @override
  State<LoginOptionsRow> createState() => _LoginOptionsRowState();
}

class _LoginOptionsRowState extends State<LoginOptionsRow> {
  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Row(
        children: [
          Switch(
            value: rememberMe,
            onChanged: (value) {
              setState(() {
                rememberMe = value;
              });
            },
            activeColor: BAppColors.primary, // dot color when ON
            activeTrackColor: BAppColors.white, // track color when ON
            inactiveThumbColor: BAppColors.white, // dot color when OFF
            inactiveTrackColor:  BAppColors.white.withOpacity(0.2), // track color when OFF
            trackOutlineColor: MaterialStateProperty.all(BAppColors.lightGray300), // 👈 border color
          ),
          Text(
            AppStrings.rememberMe,
            style: BAppStyles.poppins(
              color: BAppColors.white,
              fontSize: 14,
              weight: FontWeight.w400,
            ),
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {
              // Handle forgot password tap
            },
            child: Text(
              AppStrings.forgot,
              style: BAppStyles.poppins(
                color: BAppColors.error700,
                fontSize: 12,
                weight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

