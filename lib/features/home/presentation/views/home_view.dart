import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:my_bookly_app/core/gen/assets.gen.dart';
import 'package:my_bookly_app/features/home/presentation/views/widgets/custom_header.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomHeader(
            leading: SvgPicture.asset(Assets.images.logo.path),
            actionIcon: Icon(Icons.search, size: 25.sp),
          ).marginSymmetric(horizontal: 30.w, vertical: 48.w),
        ],
      ),
    );
  }
}
