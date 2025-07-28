import 'package:flutter/material.dart';
import 'package:my_bookly_app/core/theme/app_text_styles.dart';
import 'package:my_bookly_app/core/utils/extentions/spacing_extension.dart';
import 'package:my_bookly_app/features/home/presentation/views/widgets/similer_books_list_view_section.dart';

class SimilerBooksSection extends StatelessWidget {
  const SimilerBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You can also like',
          style: AppTextStyles.style16.copyWith(fontWeight: FontWeight.bold),
        ),
        8.height,
        SimilerBooksListViewSection(),
        30.height,
      ],
    );
  }
}
