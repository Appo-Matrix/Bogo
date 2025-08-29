import 'package:flutter/material.dart';
import '../../../../../core/utils/constants/app_colors.dart';

class DateSelector extends StatefulWidget {
  const DateSelector({super.key});

  @override
  State<DateSelector> createState() => _DateSelectorState();
}

class _DateSelectorState extends State<DateSelector> {
  final TextEditingController dayController = TextEditingController();
  final TextEditingController monthController = TextEditingController();
  final TextEditingController yearController = TextEditingController();

  final FocusNode dayFocus = FocusNode();
  final FocusNode monthFocus = FocusNode();
  final FocusNode yearFocus = FocusNode();

  @override
  void dispose() {
    dayController.dispose();
    monthController.dispose();
    yearController.dispose();
    dayFocus.dispose();
    monthFocus.dispose();
    yearFocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildInputBox("day", dayController, dayFocus, TextInputType.number, 2),
        const SizedBox(width: 12),
        _buildInputBox("month", monthController, monthFocus, TextInputType.number, 2),
        const SizedBox(width: 12),
        _buildInputBox("year", yearController, yearFocus, TextInputType.number, 4),
      ],
    );
  }

  Widget _buildInputBox(
      String hint,
      TextEditingController controller,
      FocusNode focusNode,
      TextInputType type,
      int maxLen,
      ) {
    return Container(
      width: 105,
      height: 92,
      decoration: BoxDecoration(
        color: BAppColors.white.withOpacity(0.2),
        borderRadius: BorderRadius.circular(30),
        border: Border.all( // ✅ Custom border is visible
          color: focusNode.hasFocus ? Colors.white : Colors.white54,
          width: 2,
        ),
      ),
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: TextField(
        controller: controller,
        focusNode: focusNode,
        keyboardType: type,
        maxLength: maxLen,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
        cursorColor: Colors.white,
        decoration: InputDecoration(
          counterText: "",
          border: InputBorder.none, // ❌ Hides TextField border
          focusedBorder: InputBorder.none, // ❌ Ensures no underline when focused
          enabledBorder: InputBorder.none, // ❌ Ensures no underline normally
          hintText: hint,
          hintStyle: const TextStyle(color: Colors.white70),
        ),
      ),
    );
  }
}
