import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_bookly_app/core/utils/extentions/spacing_extension.dart';
import 'package:my_bookly_app/core/utils/extentions/widget_extensions.dart';
import 'package:my_bookly_app/features/home/presentation/views/sections/book_details_section.dart';
import 'package:my_bookly_app/features/home/presentation/views/sections/similer_books_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              BookDetailsSection(),
              Expanded(child: 50.height),
              SimilerBooksSection(),
            ],
          ).paddingHorizontal(30.w),
        ),
      ],
    );
  }
}
