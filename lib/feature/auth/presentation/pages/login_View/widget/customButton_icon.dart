import 'package:flutter/material.dart';
import 'package:fruits_market/core/utils/appColors.dart';
import 'package:fruits_market/core/utils/config_size.dart';
import 'package:gap/gap.dart';

class CustomButtonIcon extends StatelessWidget {
  const CustomButtonIcon(
      {super.key, required this.icon, required this.text, required this.color, required this.onTap});
  final IconData icon;
  final String text;
  final Color color;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(left: ConfigSize.defultSize! * 3),
        width: ConfigSize.screenWidth,
        height: 60,
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(width: 2, color: AppColors.blackColor),
        ),
        child: Center(
          child: Row(
            children: [
              Icon(
                icon,
                color: color,
              ),
              Gap(ConfigSize.defultSize! * 1),
              Text(text)
            ],
          ),
        ),
      ),
    );
  }
}
