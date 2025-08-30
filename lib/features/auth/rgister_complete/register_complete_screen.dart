import 'package:bogo/features/auth/rgister_complete/widgets/check_box.dart';
import 'package:bogo/features/auth/rgister_complete/widgets/subtitle.dart';
import 'package:bogo/features/auth/rgister_complete/widgets/tile_widget.dart';
import 'package:flutter/material.dart';
import '../../../../core/utils/common/common_widgets/primary_button.dart';
import '../../../../core/utils/constants/app_assets.dart';
import '../../../../core/utils/constants/app_colors.dart';
import '../../../../core/utils/constants/app_strings.dart';
import '../../../../core/utils/constants/app_sizes.dart';

class RegisterCompleteScreen extends StatelessWidget {
  const RegisterCompleteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BAppColors.primary,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(BSizes.xl),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Back Button
              IconButton(
                icon: const Icon(Icons.arrow_back, color: Colors.white),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),

              SizedBox(height: BSizes.xl), // spacing below back button

              // Title
              TitleWidget(text: AppStrings.registerTitle),

              SizedBox(height: 8),

              // Subtitle
              SubtitleWidget(text: AppStrings.registerSubtitle),

              const Spacer(),

              // Ripple Animation Checkbox
              const Center(child: CheckWithRipple()),

              const Spacer(),

              // Buttons Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: PrimaryButton(
                      backgroundColor: BAppColors.warning400,
                      text: 'Subscription',
                      onPressed: () {
                        // Navigate to Subscription screen
                      },
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: PrimaryButton(
                      backgroundColor: BAppColors.primary,
                      borderColor: BAppColors.lightGray300,
                      text: AppStrings.signInButton,
                      onPressed: () {
                        // Navigation or action
                      },
                    ),
                  ),
                ],
              ),

              const SizedBox(height: BSizes.xl),
            ],
          ),
        ),
      ),
    );
  }
}
