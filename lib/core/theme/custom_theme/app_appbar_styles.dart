import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Widget? leading; // ✅ custom leading widget option
  final VoidCallback? onBackTap;
  final bool showLeading;
  final List<Widget>? actions;
  final Color background;

  const CustomAppBar({
    super.key,
    required this.title,
    this.leading,
    this.onBackTap,
    this.showLeading = true,
    this.actions,
    this.background = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: background,
      elevation: 0,
      automaticallyImplyLeading: false,
      surfaceTintColor: Colors.white,

      // ✅ Leading logic
      leading: showLeading
          ? (leading ??
          IconButton(
            icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black),
            onPressed: onBackTap ?? () => Navigator.pop(context),
          ))
          : null,

      title: Text(
        title,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
      ),
      centerTitle: true,

      // ✅ actions allow icons / text
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
