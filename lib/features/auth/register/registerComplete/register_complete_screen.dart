import 'package:bogo/features/auth/register/registerComplete/widgets/animation_widget.dart';
import 'package:bogo/features/auth/register/registerComplete/widgets/subtitle_widget.dart';
import 'package:bogo/features/auth/register/registerComplete/widgets/title_widget.dart';
import 'package:flutter/material.dart';
import '../../../../core/utils/constants/app_colors.dart';
import '../../../../core/utils/constants/app_strings.dart';
import '../../../../core/utils/constants/app_sizes.dart';
import '../../../../shared/widgets/app_bar/app_bar.dart';
import '../../../../shared/widgets/primary_button/primary_button.dart';

class RegisterCompleteScreen extends StatelessWidget {
  const RegisterCompleteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: CustomAppBar(
        showBack: true,
        showSkip: false,
        showLogo: false,
        showNotification: false,
        onBack: () => print("Back pressed"),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(AppSizes.p20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: AppSizes.p20),

              // Title
              TitleWidget(text: AppStrings.registerTitle),

              SizedBox(height: 8),

              // Subtitle
              SubtitleWidget(text: AppStrings.registerSubtitle),

              Spacer(),

              //  Ripple Image Animation
              Center(child: CheckWithRipple()),

              Spacer(),

              //  Buttons Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: PrimaryButton(
                      backgroundColor: AppColors.accent,
                      //  round like design
                      text: 'Subscription',
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: PrimaryButton(
                      backgroundColor: AppColors.success,
                      // ✅ round like design
                      text: 'Start',
                      onPressed: () {},
                    ),
                  ),
                ],
              ),

              SizedBox(height: AppSizes.p20),
            ],
          ),
        ),
      ),
    );
  }
}
