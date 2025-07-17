import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListItemCard extends StatelessWidget {
  final String bookImg;
  final double scale;

  const ListItemCard({super.key, required this.bookImg, this.scale = 1.0});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 150.w;
    double baseHeight = 200.h;

    return Align(
      alignment: Alignment.center,
      child: Container(
        width: baseWidth * scale,
        height: baseHeight * scale,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.r),
          image: DecorationImage(fit: BoxFit.fill, image: AssetImage(bookImg)),
        ),
      ),
    );
  }
}
