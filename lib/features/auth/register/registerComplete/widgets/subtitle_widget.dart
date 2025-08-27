import 'package:flutter/material.dart';

import '../../../../../core/utils/constants/app_sizes.dart';
import '../../../../../core/utils/constants/app_styles.dart';

class SubtitleWidget extends StatelessWidget {
  final String text;

  const SubtitleWidget({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppStyles.poppins(
        fontSize: AppSizes.fontLarge,
        weight: FontWeight.w400,
        color: Colors.white70,
      ),
    );
  }
}
