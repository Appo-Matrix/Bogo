import 'package:flutter/material.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_styles.dart';

class AppBarThemeStyles {
  static AppBarTheme lightAppBarTheme = AppBarTheme(
    backgroundColor: AppColors.white,
    elevation: 0,
    iconTheme: const IconThemeData(color: Colors.black, size: 24),
    titleTextStyle: AppStyles.poppins(
      color: AppColors.black,
      fontSize: 18,
      weight: FontWeight.w600,
    ),
    centerTitle: true,
  );

  static AppBarTheme darkAppBarTheme = AppBarTheme(
    backgroundColor: AppColors.black,
    elevation: 0,
    iconTheme: const IconThemeData(color: Colors.white, size: 24),
    titleTextStyle: AppStyles.poppins(
      color: AppColors.white,
      fontSize: 18,
      weight: FontWeight.w600,
    ),
    centerTitle: true,
  );
}
