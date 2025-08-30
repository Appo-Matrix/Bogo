import 'package:bogo/features/auth/screens/sign_up/provider/radio_button_provider.dart';
import 'package:bogo/features/auth/screens/sign_up/widgets/agreement_statement.dart';
import 'package:bogo/features/auth/screens/sign_up/widgets/date_slecter.dart';
import 'package:bogo/features/auth/screens/sign_up/widgets/radio_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import '../../../../core/utils/common/common_widgets/primary_button.dart';
import '../../../../core/utils/common/common_widgets/text_field.dart';
import '../../../../core/utils/constants/app_assets.dart';
import '../../../../core/utils/constants/app_colors.dart';
import '../../../../core/utils/constants/app_sizes.dart';
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Back button
              IconButton(
                icon: const Icon(Icons.arrow_back, color: Colors.white, size: 28),
                onPressed: () => Navigator.pop(context),
              ),

              const SizedBox(height: 20),

              // Profile Avatar
              Center(
                child: CircleAvatar(
                  radius: 74,
                  backgroundImage: AssetImage(AppAssets.profile),
                ),
              ),

              const SizedBox(height: 30),

              // Username
              CustomTextField(
                hintText: "Username",
                svgIcon: SvgPicture.asset(AppAssets.person),
              ),

              SizedBox(height: BSizes.spaceBtwInputFields),

              // Full Name
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
              const DateSelector(),

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

              SizedBox(height: BSizes.md),
            ],
          ),
        ),
      ),
    );
  }
}
