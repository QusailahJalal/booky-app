import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:my_bookly_app/core/utils/extentions/widget_extensions.dart';
import 'package:my_bookly_app/features/home/presentation/views/widgets/book_details_view_body.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildBookDetailsAppBar(context),
      body: BookDetailsViewBody(),
    );
  }
}

buildBookDetailsAppBar(context) => AppBar(
  leadingWidth: 80.w,
  leading: IconButton(
    onPressed: () {
      GoRouter.of(context).pop();
    },
    icon: Icon(Icons.close),
  ).paddingHorizontal(10.w),
  actions: [
    IconButton(
      onPressed: () {},
      icon: Icon(Icons.shopping_cart),
    ).paddingHorizontal(20.w),
  ],
);
