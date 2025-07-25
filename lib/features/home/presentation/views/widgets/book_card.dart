import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookCard extends StatelessWidget {
  final String bookImg;

  const BookCard({super.key, required this.bookImg});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.w,
      height: 220.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        image: DecorationImage(fit: BoxFit.fill, image: AssetImage(bookImg)),
      ),
    );
  }
}
