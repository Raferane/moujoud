import 'package:flutter/material.dart';
import 'package:maujoud_app/utils/helpers/helper_functions.dart';
import '../../utils/constants/colors.dart';

class SellerNavigationBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const SellerNavigationBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    final backgroundColor =
        isDark ? TColors.dSurfaceContainer : TColors.lSurfaceContainer;
    final backgroundSelectedColor =
        isDark ? TColors.dSecondaryContainer : TColors.lSecondaryContainer;
    final selectedIconColor =
        isDark ? TColors.dOnSecondaryContainer : TColors.lOnSecondaryContainer;
    final selectedTextColor = isDark ? TColors.dOnSurface : TColors.lOnSurface;
    final unselectedColor =
        isDark ? TColors.dOnSurfaceVariant : TColors.lOnSurfaceVariant;

    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
      ),
      child: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildNavItem(
                    icon: Icons.refresh_rounded,
                    label: 'Listed',
                    isSelected: currentIndex == 0,
                    onTap: () => onTap(0),
                    selectedColor: selectedIconColor,
                    unselectedColor: unselectedColor,
                    backgroundSelectedColor: backgroundSelectedColor,
                    selectedTextColor: selectedTextColor,
                    selectedIconColor: selectedIconColor,
                  ),
                  const SizedBox(width: 40), // Space for FAB
                  _buildNavItem(
                    icon: Icons.home_rounded,
                    label: 'Home',
                    isSelected: currentIndex == 1,
                    onTap: () => onTap(1),
                    selectedColor: selectedIconColor,
                    unselectedColor: unselectedColor,
                    backgroundSelectedColor: backgroundSelectedColor,
                    selectedTextColor: selectedTextColor,
                    selectedIconColor: selectedIconColor,
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Center(
                child: Transform.translate(
                  offset: const Offset(0, -35),
                  child: FloatingActionButton(
                    elevation: 5,
                    shape: ContinuousRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    onPressed: () {
                      // TODO: Handle FAB tap
                    },
                    backgroundColor: isDark
                        ? TColors.dPrimaryContainer
                        : TColors.lPrimaryContainer,
                    child: Icon(
                      Icons.add,
                      size: 30,
                      color: isDark
                          ? TColors.dOnPrimaryContainer
                          : TColors.lOnPrimaryContainer,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem({
    required IconData icon,
    required String label,
    required bool isSelected,
    required VoidCallback onTap,
    required Color selectedColor,
    required Color unselectedColor,
    required Color backgroundSelectedColor,
    required Color selectedTextColor,
    required Color selectedIconColor,
  }) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        // TODO: OnTap
        onTap: onTap,
        borderRadius: BorderRadius.circular(8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 2),
              decoration: BoxDecoration(
                color:
                    isSelected ? backgroundSelectedColor : Colors.transparent,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Icon(
                icon,
                color: isSelected ? selectedIconColor : unselectedColor,
                size: 28,
              ),
            ),
            Text(
              label,
              style: TextStyle(
                color: isSelected ? selectedTextColor : unselectedColor,
                fontSize: 12,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
              ),
            ),
            const SizedBox(height: 5),
          ],
        ),
      ),
    );
  }
}
