import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/utils/common/common_widgets/primary_button.dart';
import '../../../../core/utils/constants/app_assets.dart';
import '../../../../core/utils/constants/app_colors.dart';
import '../../../../core/utils/constants/app_sizes.dart';
import '../../../../core/utils/constants/app_strings.dart';
import '../../../../core/utils/constants/app_styles.dart';
import '../screens/otp/otp_verification_screen.dart';

class TermsAndCondition extends StatefulWidget {
  const TermsAndCondition({super.key});

  @override
  State<TermsAndCondition> createState() => _TermsAndConditionState();
}

class _TermsAndConditionState extends State<TermsAndCondition> {
  // Helper method to reduce code repetition
  List<Widget> _buildSection(String heading, String subtext) {
    return [
      SizedBox(height: BSizes.spaceBtwItems),
      Text(
        heading,
        style: BAppStyles.poppins(
          color: BAppColors.white,
          fontSize: BSizes.fontSizeMd,
          weight: FontWeight.bold,
        ),
      ),
      const SizedBox(height: 6),
      Text(
        subtext,
        style: BAppStyles.poppins(
          color: BAppColors.white,
          fontSize: BSizes.fontSizeSm,
          weight: FontWeight.normal,
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = BSizes.screenHeight(context);

    return Scaffold(
      backgroundColor: BAppColors.primary,

      body: Stack(
        children: [
          /// 🌟 Background Decorations
          Positioned(
            left: 210,
            child: Image.asset(
              AppAssets.cornerImage,
              width: 200,
              height: 200,
            ),
          ),
          Positioned(
            left: 70,
            top: 138,
            child: Container(
              width: 46,
              height: 46,
              decoration: BoxDecoration(
                color: BAppColors.white.withOpacity(0.2),
                shape: BoxShape.circle,
              ),
            ),
          ),

          /// 🌟 Scrollable Content
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// ✅ Back Button
                IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () => context.pop(),
                ),

                Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          /// Title
                          Padding(
                            padding: const EdgeInsets.only(top: 40),
                            child: Center(
                              child: Text(
                                AppStrings.termsTitle,
                                style: BAppStyles.poppins(
                                  color: BAppColors.white,
                                  fontSize: BSizes.fontSizeLhx,
                                  weight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: BSizes.md),

                          /// Terms Sections
                          ..._buildSection(AppStrings.heading1, AppStrings.subText1),
                          ..._buildSection(AppStrings.heading2, AppStrings.subText2),
                          ..._buildSection(AppStrings.heading3, AppStrings.subText3),
                          ..._buildSection(AppStrings.heading4, AppStrings.subText4),
                          ..._buildSection(AppStrings.heading5, AppStrings.subText5),
                          ..._buildSection(AppStrings.heading6, AppStrings.subText6),
                          ..._buildSection(AppStrings.heading7, AppStrings.subText7),
                          ..._buildSection(AppStrings.heading8, AppStrings.subText8),
                          ..._buildSection(AppStrings.heading9, AppStrings.subText9),

                          SizedBox(height: screenHeight * 0.08),

                          /// Continue Button
                          PrimaryButton(
                            text: "Accept & Continue",
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const OtpVerificationScreen(),
                                ),
                              );
                            },
                          ),

                          const SizedBox(height: 18),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
