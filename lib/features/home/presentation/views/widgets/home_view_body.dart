import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_bookly_app/core/utils/extentions/widget_extensions.dart';

import 'package:my_bookly_app/features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:my_bookly_app/features/home/presentation/views/widgets/books_horizontal_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: BooksHorizontalListView()),
        SliverToBoxAdapter(
          child: Text(
            'Best Seller',
            style: Theme.of(context).textTheme.titleMedium,
          ).paddingOnly(top: 50.h).paddingSymmetric(horizontal: 30.w),
        ),
        SliverFillRemaining(
          child: BestSellerListView().paddingSymmetric(vertical: 30.h),
        ),
      ],
    );
  }
}
