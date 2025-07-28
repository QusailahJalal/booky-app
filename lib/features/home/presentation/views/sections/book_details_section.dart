import 'package:flutter/material.dart';
import 'package:my_bookly_app/core/gen/assets.gen.dart';
import 'package:my_bookly_app/core/theme/app_text_styles.dart';
import 'package:my_bookly_app/core/utils/extentions/spacing_extension.dart';
import 'package:my_bookly_app/core/utils/extentions/widget_extensions.dart';
import 'package:my_bookly_app/features/home/presentation/views/widgets/book_action.dart';
import 'package:my_bookly_app/features/home/presentation/views/widgets/book_card.dart';
import 'package:my_bookly_app/features/home/presentation/views/widgets/rating_book_widget.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        20.height,
        BookCard(bookImg: Assets.images.testBookImg.path),
        30.height,
        Text('The Jungle Book', style: AppTextStyles.style30SemiBold),
        Opacity(
          opacity: 0.7,
          child: Text(
            'Rudyard Kipling',
            style: AppTextStyles.style18.copyWith(fontStyle: FontStyle.italic),
          ),
        ),
        20.height,
        RatingBookWidget(),
        24.height,
        SizedBox(height: 60, child: BookActionSection().paddingHorizontal(8)),
      ],
    );
  }
}
