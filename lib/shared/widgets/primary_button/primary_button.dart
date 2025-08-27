import 'package:flutter/material.dart';
import '../../../core/utils/constants/app_colors.dart';
import '../../../core/utils/constants/app_styles.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final double width;
  final double height;

  /// ✅ New properties for border
  final bool hasBorder;
  final Color borderColor;
  final double borderWidth;

  const PrimaryButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.backgroundColor = AppColors.black,
    this.width = double.infinity,
    this.height = 92,

    /// Default border OFF
    this.hasBorder = false,
    this.borderColor = Colors.white,
    this.borderWidth = 2.0,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,   // custom width
      height: height, // custom height
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(46),
            side: hasBorder
                ? BorderSide(color: borderColor, width: borderWidth) // ✅ Show border
                : BorderSide.none, // ✅ No border
          ),
        ),
        child: Text(
          text,
          style: AppStyles.poppins(
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
