import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fruits_market/core/routing/routing.dart';
import 'package:fruits_market/core/utils/text_style.dart';
import 'package:fruits_market/feature/onBoarding/presentation/on_boarding.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody>
    with SingleTickerProviderStateMixin {
  AnimationController? animatedController;
  Animation<double>? fadingAnimation;

  @override
  void initState() {
    super.initState();
    animatedController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 600));
    fadingAnimation =
        Tween<double>(begin: .2, end: 1).animate(animatedController!);
    animatedController?.repeat(reverse: true);
    goToNextView();
  }

  @override
  void dispose() {
    animatedController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        FadeTransition(
          opacity: fadingAnimation!,
          child: Text(
            'Fruits Market',
            style: getTitleStyle(fontSize: 51),
          ),
        ),
        Image.asset('assets/image/splash_view_image.png')
      ],
    );
  }

  void goToNextView() {
    Future.delayed(Duration(seconds: 3), () {
      pushReplaceMent(context, OnBoarding());
    });
  }
}
