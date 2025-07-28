import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_bookly_app/core/theme/app_text_styles.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    super.key,
    this.height,
    this.backgroundColor,
    this.text = '',
    this.textColor,
    this.textSize,
    this.textStyle,
    this.borderRadius,
  });
  double? height;
  Color? backgroundColor, textColor;
  TextStyle? textStyle;
  double? textSize;
  String text;
  BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 17.h),
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius ?? BorderRadius.circular(16.r),
        ),
        foregroundColor: textColor ?? Colors.white,
        backgroundColor: backgroundColor ?? Colors.white,
        textStyle: AppTextStyles.style16.copyWith(
          color: textColor ?? Colors.white,
          fontSize: textSize ?? 16.sp,
        ),
      ),
      onPressed: () {},
      child: Text(text),
    );
  }
}
