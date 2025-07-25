import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_bookly_app/core/utils/extentions/widget_extensions.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: buildBookDetailsAppBar());
  }
}

buildBookDetailsAppBar()=>AppBar(
  leadingWidth: 90.w,
  leading: IconButton(
    onPressed: () {},
    icon: Icon(Icons.close),
  ).paddingHorizontal(20.w),
  actions: [
    IconButton(
      onPressed: () {},
      icon: Icon(Icons.shopping_cart),
    ).paddingHorizontal(20.w),
  ],
);
