import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_bookly_app/core/shared/widgets/custom_button.dart';

class BookActionSection extends StatelessWidget {
  const BookActionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              height: 60.h,
              text: '19.99€',
              textColor: Colors.black,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(14.r),
                bottomLeft: Radius.circular(14.r),
              ),
            ),
          ),
          Expanded(
            child: CustomButton(
              height: 60.h,
              text: 'Free preview',
              backgroundColor: Color(0xffEF8262),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(14.r),
                bottomRight: Radius.circular(14.r),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
