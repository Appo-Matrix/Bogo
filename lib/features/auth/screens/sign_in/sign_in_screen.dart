import 'package:flutter/material.dart';
import '../../../../core/utils/constants/app_colors.dart';
import '../../../../shared/widgets/app_bar/app_bar.dart';
import '../../../../shared/widgets/primary_button/primary_button.dart';
import '../../../../shared/widgets/text_field/text_field.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: AppColors.primary,

      appBar: CustomAppBar(
        title: "Subscription",
        showBack: true,
        showSkip: true,
        showLogo: false,
        showNotification: false,
        onBack: () => print("Back pressed"),
        onSkip: () => print("Skip pressed"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              CustomTextField(
                hintText: "Enter your email",
                icon: Icons.email, //  Left side icon
              ),

              CustomTextField(
                hintText: "Enter your password",
                icon: Icons.lock,
                obscureText: true, //  for password
              ),

              PrimaryButton(
                text: "Continue",   //  Text har screen pe change boga
                onPressed: () {
                  // Navigation ya action
                },
              ),


            ],
          ),
        ),
      ),
    );
  }
}
