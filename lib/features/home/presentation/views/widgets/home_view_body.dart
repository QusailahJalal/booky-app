import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:my_bookly_app/features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:my_bookly_app/features/home/presentation/views/widgets/books_horizontal_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        BooksHorizontalListView().sliverBox,
        Text(
          'Best Seller',
          style: Get.textTheme.titleMedium,
        ).marginOnly(top: 50.h).marginSymmetric(horizontal: 30.w).sliverBox,
        SliverFillRemaining(
          child: BestSellerListView().marginSymmetric(vertical: 30.h),
        ),
      ],
    );
  }
}
