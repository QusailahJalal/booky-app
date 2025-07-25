import 'package:flutter/material.dart';
import 'package:my_bookly_app/core/gen/assets.gen.dart';
import 'package:my_bookly_app/core/theme/app_text_styles.dart';
import 'package:my_bookly_app/core/utils/extentions/spacing_extension.dart';
import 'package:my_bookly_app/features/home/presentation/views/widgets/book_card.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          25.height,
          BookCard(bookImg: Assets.images.testBookImg.path),
          50.height,
          Text('The Jungle Book', style: AppTextStyles.style30SemiBold),
        ],
      ),
    );
  }
}
