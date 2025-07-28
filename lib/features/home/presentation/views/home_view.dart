import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:my_bookly_app/core/gen/assets.gen.dart';
import 'package:my_bookly_app/core/theme/app_colors.dart';
import 'package:my_bookly_app/core/utils/extentions/widget_extensions.dart';
import 'package:my_bookly_app/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:my_bookly_app/my_bookly_app.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 135.w,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        leading: SvgPicture.asset(
          Assets.images.logo.path,
          color: Theme.brightnessOf(context) != Brightness.dark
              ? AppColors.onBackgroundLight
              : null,
        ).paddingSymmetric(horizontal: 30.w),
        actions: [
          IconButton(
            onPressed: () {
              themeNotifier.value = themeNotifier.value == ThemeMode.light
                  ? ThemeMode.dark
                  : ThemeMode.light;
            },
            icon: themeNotifier.value == ThemeMode.dark
                ? Icon(Icons.light_mode)
                : Icon(Icons.dark_mode),
          ),
        ],
        actionsPadding: EdgeInsetsDirectional.only(end: 20.w),
      ),
      body: HomeViewBody(),
    );
  }
}
