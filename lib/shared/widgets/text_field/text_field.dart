import 'package:flutter/material.dart';
import '../../../core/utils/constants/app_colors.dart';
import '../../../core/utils/constants/app_styles.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final TextEditingController? controller;
  final bool obscureText;
  final double width;
  final double height;

  const CustomTextField({
    super.key,
    required this.hintText,
    required this.icon,
    this.controller,
    this.obscureText = false,
    this.width = double.infinity,
    this.height = 92,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        style: BAppStyles.poppins(
          color: Colors.white,
          fontSize: 18,
          weight: FontWeight.w400,
        ),
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: BAppStyles.poppins(
            color: Colors.white.withOpacity(0.5),
            fontSize: 16,
            weight: FontWeight.w400,
          ),
          filled: true,
          fillColor: const Color(0xFFD9D9D9).withOpacity(0.15), //  D9D9D9 15%
          prefixIcon: Icon(icon, color: Colors.white, size: 29),
          contentPadding: const EdgeInsets.symmetric(vertical: 25),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(35), //  radius 35
            borderSide: BorderSide(
              color: Colors.white.withOpacity(0.5), // stroke FFFFFF 50%
              width: 1.5,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(35),
            borderSide: BorderSide(
              color: AppColors.white, // 🔹 Focus pe primary highlight
              width: 2,
            ),
          ),
        ),
      ),
    );
  }
}
