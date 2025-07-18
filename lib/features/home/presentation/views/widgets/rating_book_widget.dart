import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'package:my_bookly_app/core/theme/app_colors.dart';
import 'package:my_bookly_app/core/theme/app_text_styles.dart';
import 'package:my_bookly_app/core/utils/extentions/spacing_extension.dart';

class RatingBookWidget extends StatelessWidget {
  const RatingBookWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(FontAwesomeIcons.solidStar, color: AppColors.fabBackground),
        5.width,
        Text('4.8', style: AppTextStyles.style16),
        3.width,
        Text(
          '(2390)',
          style: AppTextStyles.style14.copyWith(
            color: AppColors.textSecondaryDark,
          ),
        ),
      ],
    );
  }
}
