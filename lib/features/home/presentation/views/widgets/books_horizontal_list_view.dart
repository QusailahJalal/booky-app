import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_bookly_app/core/gen/assets.gen.dart';
import 'package:my_bookly_app/core/utils/extentions/spacing_extension.dart';
import 'package:my_bookly_app/core/utils/extentions/widget_extensions.dart';
import 'package:my_bookly_app/features/home/presentation/views/widgets/book_card.dart';

class BooksHorizontalListView extends StatelessWidget {
  const BooksHorizontalListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      child: ListView.separated(
        padding: EdgeInsets.zero,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) =>
            BookCard(bookImg: Assets.images.testBookImg.path),
        separatorBuilder: (context, index) => 16.width,
        itemCount: 15,
      ),
    ).paddingOnly(top: 36.h);
  }
}
