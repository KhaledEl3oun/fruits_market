import 'package:flutter/cupertino.dart';
import 'package:fruits_market/core/utils/appColors.dart';
import 'package:fruits_market/core/utils/config_size.dart';
import 'package:fruits_market/core/utils/text_style.dart';
import 'package:fruits_market/feature/onBoarding/widget/onBoarding_model.dart';
import 'package:gap/gap.dart';

class OnBoardingItem extends StatelessWidget {
  const OnBoardingItem({super.key, required this.model});

  final OnboardingModel model;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
            height: ConfigSize.defultSize! * 25,
            child: Image.asset(model.image)),
        Gap(ConfigSize.defultSize! * 1),
        Text(
          model.text,
          style: getbodyStyle(color: AppColors.blackColor),
        ),
        Gap(ConfigSize.defultSize! * 1),
        Text(model.body, style: getSmallStyle())
      ],
    );
  }
}
