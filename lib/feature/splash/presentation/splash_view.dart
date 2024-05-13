import 'package:flutter/material.dart';
import 'package:fruits_market/core/utils/appColors.dart';
import 'package:fruits_market/feature/splash/widget/splash_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:AppColors.bottonColor,
      body: SplashBody(),
    );
  }
}
