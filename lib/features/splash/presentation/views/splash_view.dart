import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_bookly_app/features/home/presentation/views/home_view.dart';
import 'package:my_bookly_app/features/splash/presentation/views/widgets/splash_view_body.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    navigateToHome();
  }

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SplashViewBody());
  }

   void navigateToHome() {
    Future.delayed(
      Duration(seconds: 4),
      () => GoRouter.of(context).push('/home'),
    );
  }
}
