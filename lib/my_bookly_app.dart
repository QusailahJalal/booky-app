import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_bookly_app/core/theme/app_theme.dart';
import 'package:my_bookly_app/core/utils/routers/app_routers.dart';

final themeNotifier = ValueNotifier(ThemeMode.dark);

class MyBooklyApp extends StatelessWidget {
  const MyBooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812), // iPhone X size, adjust as needed
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return ValueListenableBuilder<ThemeMode>(
          valueListenable: themeNotifier,
          builder: (context, currentTheme, _) {
            return MaterialApp.router(
              debugShowCheckedModeBanner: false,

              theme: AppTheme.lightTheme,
              darkTheme: AppTheme.darkTheme,
              themeMode: currentTheme,
              routerConfig: AppRouters.router,
            );
          },
        );
      },
    );
  }
}
