import 'package:bogo/core/utils/constants/app_colors.dart';
import 'package:bogo/core/utils/constants/app_strings.dart';
import 'package:bogo/core/utils/constants/app_styles.dart';
import 'package:bogo/features/auth/login/widget/social_icon_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../core/utils/constants/app_assets.dart';
import '../../../shared/widgets/primary_button/primary_button.dart';
import '../../../shared/widgets/text_field/text_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: SingleChildScrollView(
        child: Column(
          children: [
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
                  left: 120,
                  top: 90,
                  child: Center(
                    child: SvgPicture.asset(
                      AppAssets.logo,
                      width: 42,
                      height: 42,
                    ),
                  ),
                ),
                Positioned(
                  left: 60,
                  top: 138,
                  child: Container(
                    width: 46,
                    height: 46,
                    decoration: BoxDecoration(
                      color: AppColors.white.withOpacity(0.2),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ],
            ),
        
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppStrings.createYourAccount,
                    style: AppStyles.poppins(
                      color: AppColors.white,
                      fontSize: 44,
                      weight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 27),
        
                  CustomTextField(hintText: AppStrings.yourPhoneNumber, svgIcon: SvgPicture.asset(AppAssets.person) ),
                  CustomTextField(hintText: AppStrings.password,svgIcon: SvgPicture.asset(AppAssets.lock) ,),
        
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Row(
                      children: [
                        Text(
                          AppStrings.rememberMe,
                          style: AppStyles.poppins(
                            color: AppColors.white,
                            fontSize: 14,
                            weight: FontWeight.w400,
                          ),
        
                        ),
                        Spacer(),
                        Text(
                          AppStrings.forgot,
                          style: AppStyles.poppins(
                            color: AppColors.error,
                            fontSize: 12,
                            weight: FontWeight.w600,
                          ),
        
                        ),
                        SizedBox(width: 4,),Text(
                          AppStrings.mypassword,
                          style: AppStyles.poppins(
                            color: AppColors.white,
                            fontSize: 12,
                            weight: FontWeight.w600,
                          ),
        
                        ),
                      ],
                    ),
        
        
                  ),
                  SizedBox(height: 25,),
        
                  // signup button
                  PrimaryButton(
                    text: AppStrings.signUp,
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(),));
                    },
                  ),
        
                  // social icons
                  SizedBox(height: 18,),
        
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: SocialButton(
                          color: AppColors.secondary,
                          iconPath: AppAssets.facebook,
                          onTap: () {},
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: SocialButton(
                          color: AppColors.googleContainerColor,
                          iconPath: AppAssets.google,
                          onTap: () {},
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: SocialButton(
                          color: AppColors.black,
                          iconPath: AppAssets.apple,
        
                          onTap: () {},
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 20,),
        
                  //
                  Container(
                    width: double.infinity,
                    height: 42,
                    decoration: BoxDecoration(
                      color: AppColors.white.withOpacity(0.15),
                      borderRadius: BorderRadius.circular(18)
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 14.0),
                          child: Text(
                            AppStrings.alreadyHaveAnAccount,
                            style: AppStyles.poppins(
                              color: AppColors.white,
                              fontSize: 16,
                              weight: FontWeight.w400,
                            ),


                          ),
                        ),
                        SizedBox(width: 13,),
                        Expanded(
                          child: PrimaryButton(
                            width: 177,
                            height: 42,
                            text: AppStrings.signUp,
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(),));
                            },
                          ),
                        ),
        
                      ],
                    ),
                  ),
                  SizedBox(height: 25,),





                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
