import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_bookly_app/core/theme/app_theme.dart';
import 'package:my_bookly_app/core/utils/routers/app_routers.dart';

class MyBooklyApp extends StatelessWidget {
  const MyBooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812), // iPhone X size, adjust as needed
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,

          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode: ThemeMode.dark,
          routerConfig: AppRouters.router,
        );
      },
    );
  }
}
