import 'package:bogo/features/auth/screens/sign_up/provider/radio_button_provider.dart';
import 'package:bogo/features/auth/screens/sign_up/widgets/agreement_statement.dart';
import 'package:bogo/features/auth/screens/sign_up/widgets/date_slecter.dart';
import 'package:bogo/features/auth/screens/sign_up/widgets/radio_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../../../../core/utils/common/common_widgets/custom_app_bar.dart';
import '../../../../core/utils/common/common_widgets/primary_button.dart';
import '../../../../core/utils/common/common_widgets/text_field.dart';
import '../../../../core/utils/constants/app_assets.dart';
import '../../../../core/utils/constants/app_colors.dart';
import '../../../../core/utils/constants/app_sizes.dart';
import '../../../../core/utils/constants/app_strings.dart';
import '../../terms_of_services/terms_and_condition.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final readRProvider = context.read<RadioButtonProvider>();
    final watchRProvider = context.watch<RadioButtonProvider>();

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: BAppColors.primary,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// -------- Stack (Top Design + Profile) --------
            Stack(
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Image(
                    alignment: Alignment.topRight,
                    image: AssetImage(AppAssets.cornerImage),
                    width: 200,
                    height: 200,
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 60),
                    child: CircleAvatar(
                      radius: 74,
                      backgroundImage: AssetImage(AppAssets.profile),
                    ),
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
              ],
            ),

            /// -------- Form Content with Padding --------
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  SizedBox(height: BSizes.spaceBtwInputFields),

                  // Username
                  CustomTextField(
                    hintText: "Username",
                    svgIcon: SvgPicture.asset(AppAssets.person),
                  ),

                  SizedBox(height: BSizes.spaceBtwInputFields),

                  // Full name
                  CustomTextField(
                    hintText: "Full Name",
                    svgIcon: SvgPicture.asset(AppAssets.person),
                  ),

                  SizedBox(height: BSizes.spaceBtwItems),

                  // Gender selection
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      RadioButton(
                        imageIcon: Icons.male_outlined,
                        title: 'male',
                        selectedValue: watchRProvider.selectedValue,
                        onChanged: (value) => readRProvider.assignValue(value),
                      ),
                      RadioButton(
                        imageIcon: Icons.female_outlined,
                        title: 'female',
                        selectedValue: watchRProvider.selectedValue,
                        onChanged: (value) => readRProvider.assignValue(value),
                      ),
                    ],
                  ),

                  SizedBox(height: BSizes.spaceBtwItems),

                  // Date of Birth
                  const DateSelector(),   // ⬅️ Added here

                  SizedBox(height: BSizes.spaceBtwItems),

                  // Email
                  CustomTextField(
                    hintText: "Email",
                    svgIcon: SvgPicture.asset(AppAssets.googleIcon),
                  ),

                  SizedBox(height: BSizes.spaceBtwInputFields),

                  // Phone number
                  CustomTextField(
                    hintText: "Phone Number",
                    svgIcon: SvgPicture.asset(AppAssets.googleIcon),
                  ),

                  SizedBox(height: BSizes.spaceBtwInputFields),

                  // Password
                  CustomTextField(
                    hintText: "Password",
                    obscureText: true,
                    svgIcon: SvgPicture.asset(AppAssets.lock),
                  ),

                  SizedBox(height: BSizes.spaceBtwItems),

                  // Agreement
                  const AgreementStatement(),

                  SizedBox(height: BSizes.spaceBtwItems),

                  // Continue button
                  PrimaryButton(
                    text: 'Continue',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const TermsAndCondition(),
                        ),
                      );
                    },
                  ),

                  SizedBox(height: BSizes.md,)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
