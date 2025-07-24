import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:my_bookly_app/core/gen/assets.gen.dart';
import 'package:my_bookly_app/core/utils/extentions/spacing_extension.dart';
import 'package:my_bookly_app/features/home/presentation/views/widgets/list_item_card.dart';

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
            ListItemCard(bookImg: Assets.images.testBookImg.path),
        separatorBuilder: (context, index) => 16.width,
        itemCount: 15,
      ),
    ).marginOnly(top: 36.h);
  }
}
