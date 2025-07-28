import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookCard extends StatelessWidget {
  final String bookImg;
  double? width, height,radius;

  BookCard({super.key, required this.bookImg, this.width, this.height,this.radius});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? 150.w,
      height: 224.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius ?? 16.r),
        image: DecorationImage(fit: BoxFit.fill, image: AssetImage(bookImg)),
      ),
    );
  }
}
