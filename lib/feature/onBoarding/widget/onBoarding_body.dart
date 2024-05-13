import 'package:flutter/material.dart';
import 'package:fruits_market/core/routing/routing.dart';
import 'package:fruits_market/core/utils/appColors.dart';
import 'package:fruits_market/core/utils/config_size.dart';
import 'package:fruits_market/core/utils/text_style.dart';
import 'package:fruits_market/core/widget/custom_button.dart';
import 'package:fruits_market/feature/auth/presentation/pages/login_View/login_View.dart';
import 'package:fruits_market/feature/onBoarding/widget/onBoarding_model.dart';
import 'package:fruits_market/feature/onBoarding/widget/page_view_item.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingBody extends StatefulWidget {
  const OnBoardingBody({super.key});

  @override
  State<OnBoardingBody> createState() => _OnBoardingBodyState();
}

List<OnboardingModel> page = [
  OnboardingModel(
      image: 'assets/image/onboarding1.png',
      text: 'Shopping',
      body: 'Explor top organic fruits & grab them'),
  OnboardingModel(
      image: 'assets/image/onboarding2.png',
      text: 'Delivery on the way',
      body: 'GEt your order by speed delivery'),
  OnboardingModel(
      image: 'assets/image/onboarding3.png',
      text: 'Delivery Arived',
      body: 'Order your arrived at Your Place')
];

var pageController = PageController();
int index = 0;

class _OnBoardingBodyState extends State<OnBoardingBody> {
  @override
  Widget build(BuildContext context) {
    ConfigSize().init(context);
    return Stack(
      children: [
        Positioned(
            top: ConfigSize.defultSize! * 5,
            left: 320,
            child: (index == 2)
                ? const SizedBox()
                : InkWell(
                    onTap: () {
                      pushReplaceMent(context, const LoginView());
                    },
                    child: Text(
                      'Skip',
                      style: getbodyStyle(color: AppColors.blackColor),
                      textAlign: TextAlign.left,
                    ),
                  )),
        Positioned(
            left: ConfigSize.defultSize! * 10,
            right: ConfigSize.defultSize! * 10,
            bottom: ConfigSize.defultSize! * 7,
            child: (index == 2)
                ? CustomButton(
                    onTap: () {
                      pushReplaceMent(context,  LoginView());
                    },
                    text: 'Get Start')
                : const SizedBox()),
        Padding(
          padding: EdgeInsets.symmetric(vertical: ConfigSize.defultSize! * 20),
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                  onPageChanged: (value) {
                    setState(() {
                      index = value;
                    });
                  },
                  controller: pageController,
                  itemCount: page.length,
                  itemBuilder: (BuildContext context, index) {
                    return OnBoardingItem(model: page[index]);
                  },
                ),
              ),
              SmoothPageIndicator(
                  effect: WormEffect(
                      activeDotColor: AppColors.bottonColor,
                      dotHeight: 9,
                      dotWidth: 9),
                  controller: pageController,
                  count: 3)
            ],
          ),
        )
      ],
    );
  }
}
