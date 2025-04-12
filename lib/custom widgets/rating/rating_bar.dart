import 'package:flutter/material.dart';
import 'package:maujoud_app/utils/helpers/helper_functions.dart';
import '../../utils/constants/colors.dart';

class TRatingBar extends StatelessWidget {
  final double rating;
  final double size;
  final Color? activeColor;
  final Color? inactiveColor;

  const TRatingBar({
    super.key,
    required this.rating,
    this.size = 24,
    this.activeColor,
    this.inactiveColor,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(5, (index) {
        if (index < rating.floor()) {
          return Icon(
            Icons.star_rounded,
            size: size,
            color: activeColor ??
                (isDark ? TColors.dSecondary : TColors.lSecondary),
          );
        } else if (index < rating) {
          return ShaderMask(
            blendMode: BlendMode.srcIn,
            shaderCallback: (Rect bounds) {
              return LinearGradient(
                stops: const [0, 0.5, 0.5],
                colors: [
                  activeColor ??
                      (isDark ? TColors.dSecondary : TColors.lSecondary),
                  activeColor ??
                      (isDark ? TColors.dSecondary : TColors.lSecondary),
                  isDark
                      ? TColors.dSecondaryContainer
                      : TColors.lSecondaryContainer,
                ],
              ).createShader(bounds);
            },
            child: Icon(
              Icons.star_rounded,
              size: size,
            ),
          );
        } else {
          return Stack(
            children: [
              Icon(
                Icons.star_rounded,
                size: size,
                color: isDark
                    ? TColors.dSecondaryContainer
                    : TColors.lSecondaryContainer,
              ),
              Icon(
                Icons.star_outline_rounded,
                size: size,
                color: activeColor ??
                    (isDark ? TColors.dSecondary : TColors.lSecondary),
              ),
            ],
          );
        }
      }),
    );
  }
}
