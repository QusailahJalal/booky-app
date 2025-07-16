import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension WidgetExtensions on Widget {
  Widget paddingAll([double value=8.0]) => Padding(
        padding: EdgeInsets.all(value.sp),
        child: this,
      );
  Widget paddingSymmetric({double horizontal=8.0, double vertical=0.0}) => Padding(
    padding: EdgeInsets.symmetric(horizontal: horizontal.sp, vertical: vertical.sp),
    child: this,
  );
  Widget paddingOnly({double left=0.0, double top=0.0, double right=0.0, double bottom=0.0}) => Padding(
    padding: EdgeInsets.only(left: left.sp, top: top.sp, right: right.sp, bottom: bottom.sp),
    child: this,
  );
  Widget paddingHorizontal([double value=8.0]) => Padding(
    padding: EdgeInsets.symmetric(horizontal: value.sp),
    child: this,
  );
  Widget paddingVertical([double value=8.0]) => Padding(
    padding: EdgeInsets.symmetric(vertical: value.sp),
    child: this,
  );
  
}