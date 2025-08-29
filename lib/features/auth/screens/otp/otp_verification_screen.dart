import 'dart:ui';
import 'package:bogo/core/utils/common/common_widgets/primary_button.dart';
import 'package:bogo/core/utils/constants/app_colors.dart';
import 'package:bogo/core/utils/constants/app_sizes.dart';
import 'package:flutter/material.dart';
import '../../../../core/utils/common/common_widgets/custom_app_bar.dart';
import '../../../../core/utils/constants/app_styles.dart';
class OtpVerificationScreen extends StatefulWidget {
  const OtpVerificationScreen({super.key});

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  final List<TextEditingController> _controllers = List.generate(
    4,
        (index) => TextEditingController(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BAppColors.backGroundColor,
      appBar: const CustomAppBar(
        showBack: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          // Profile Image
              Container(
                padding: const EdgeInsets.all(3), // space for border
                child: const CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(
                    "https://randomuser.me/api/portraits/men/75.jpg",
                  ),
                ),
              ),

              const SizedBox(height: 24),

              // Title
              Text(
                "OTP code verification",
                style: BAppStyles.poppins(
                  color: BAppColors.white,
                  fontSize: BSizes.fontSizeLgx,
                  weight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 32),

              // OTP Inputs
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(4, (index) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                      child: Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          color: BAppColors.white.withOpacity(0.15),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: BAppColors.white.withOpacity(0.3),
                            width: 1.5,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              blurRadius: 8,
                              offset: const Offset(2, 2),
                            ),
                          ],
                        ),
                        child: TextField(
                          controller: _controllers[index],
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: BAppColors.white,
                          ),
                          keyboardType: TextInputType.number,
                          maxLength: 1,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            counterText: "",
                          ),
                          onChanged: (value) {
                            if (value.isNotEmpty && index < 3) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                        ),
                      ),
                    ),
                  );
                }),
              ),

              const Spacer(),
              PrimaryButton(text: 'Continue', onPressed: () {}),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
