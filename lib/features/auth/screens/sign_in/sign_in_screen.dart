import 'package:bogo/core/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';

import '../../../../core/theme/custom_theme/app_appbar_styles.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:AppColors.primary,
      appBar: CustomAppBar(
        title: "Dashboard",
        leading: IconButton(
          icon: const Icon(Icons.filter_list, color: Colors.black),
          onPressed: () {
            // open drawer logic
          },
        ),
        actions: [Text("save"),
        Icon(Icons.ice_skating)],
      ),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          children: [
          ],
        ),
      ),
    );
  }
}
