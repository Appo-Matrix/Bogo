import 'package:flutter/material.dart';
import '../../../../core/utils/common/common_widgets/custom_app_bar.dart';
import '../../../../core/utils/constants/app_colors.dart';
import '../../../../core/utils/constants/app_styles.dart';
import '../../../../core/utils/common/common_widgets/primary_button.dart';
import 'interest_chip.dart';

/// A simple screen to let the user pick multiple interests.
/// - Whole page scrolls (title + grid + button)
/// - Tapping a chip toggles selection
class InterestScreen extends StatefulWidget {
  const InterestScreen({super.key});

  @override
  State<InterestScreen> createState() => _InterestScreenState();
}

class _InterestScreenState extends State<InterestScreen> {
  // ---------------------------
  // Data
  // ---------------------------

  // All available interest options (static list)
  final List<String> _all = const [
    'Food',
    'Health',
    'Technology',
    'Games',
    'Travel',
    'Culture',
    'Entertainment',
    'Sports',
    'Music',
    'Animals',
    'Live shows',
    'Learning',
    'Cooking',
    'Fashion and Beauty',
    'Cars',
    'Traditions',
  ];

  // Currently selected interests (start with one default)
  final Set<String> _selected = {'Technology'};

  // Toggle selection: add if not present, remove if already present
  void _toggle(String label) {
    setState(() {
      _selected.contains(label) ? _selected.remove(label) : _selected.add(label);
    });
  }

  // ---------------------------
  // UI
  // ---------------------------

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Page background color (brand primary)
      backgroundColor: BAppColors.primary,

      // Top bar: back only, no title/logo/notification
      appBar: CustomAppBar(
        showBack: true,
        showSkip: false,
        showLogo: false,
        showNotification: false,
        onBack: () => Navigator.pop(context),
        onSkip: () {},
      ),

      // Content below respects safe areas (status bar, notches, etc.)
      body: SafeArea(
        // Whole page scrolls (so GridView inside must NOT scroll)
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Padding(
            // Small inner padding to match your design spacing
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // ------- Title -------
                Text(
                  "What are your interests",
                  style: BAppStyles.poppins(
                    color: BAppColors.white,
                    fontSize: 25,
                    weight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 12),

                // ------- Interests grid -------
                // Important:
                //  - shrinkWrap: true => Grid takes only needed height
                //  - NeverScrollableScrollPhysics => disable inner scroll
                //     (because the whole page is already scrollable)
                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,   // 2 columns
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                    mainAxisExtent: 62,  // fixed chip height
                  ),
                  itemCount: _all.length,
                  itemBuilder: (context, i) {
                    final label = _all[i];
                    final isSelected = _selected.contains(label);

                    // Reusable chip widget (separate file):
                    // - shows label
                    // - orange bg when selected
                    // - toggles on tap
                    return InterestChip(
                      label: label,
                      selected: isSelected,
                      onTap: () => _toggle(label),
                    );
                  },
                ),

                const SizedBox(height: 20),

                // ------- Continue button -------
                // Hook this up to your next navigation step
                PrimaryButton(
                  backgroundColor: BAppColors.black1000,
                  text: "Continue",
                  onPressed: () {
                    // TODO: Use _selected where needed (e.g., save or navigate)
                    // Example:
                    // Navigator.push(context, MaterialPageRoute(builder: (_) => NextScreen(selected: _selected.toList())));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
