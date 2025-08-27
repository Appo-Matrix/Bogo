import 'package:flutter/material.dart';

import '../../../../../core/utils/constants/app_sizes.dart';
import '../../../../../core/utils/constants/app_styles.dart';


class TitleWidget extends StatelessWidget {
  final String text;

  const TitleWidget({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppStyles.poppins(
        fontSize: AppSizes.fontHero,
        weight: FontWeight.w700,
        color: Colors.white,
      ),
    );
  }
}
