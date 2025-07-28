import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_bookly_app/core/gen/assets.gen.dart';
import 'package:my_bookly_app/core/utils/extentions/spacing_extension.dart';
import 'package:my_bookly_app/features/home/presentation/views/widgets/book_card.dart';

class SimilerBooksListViewSection extends StatelessWidget {
  const SimilerBooksListViewSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.h,
      child: ListView.separated(
        padding: EdgeInsets.zero,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => BookCard(
          width: 90.w,
          // height: 120.h,
          radius: 8.r,
          bookImg: Assets.images.testBookImg.path,
        ),
        separatorBuilder: (context, index) => 10.width,
        itemCount: 15,
      ),
    );
  }
}
