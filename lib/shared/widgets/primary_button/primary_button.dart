import 'package:flutter/material.dart';
import '../../../core/utils/constants/app_colors.dart';
import '../../../core/utils/constants/app_styles.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final double width;
  final double height;

  const PrimaryButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.backgroundColor = AppColors.black,
    this.width = double.infinity,
    this.height = 92,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,   //  ab custom width
      height: height, //  ab custom height
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(46),
          ),
        ),
        child: Text(
          text,
          style: BAppStyles.poppins(
            color: Colors.white,
            fontSize: 18,
            weight: FontWeight.w600,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}