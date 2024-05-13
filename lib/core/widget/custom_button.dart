import 'package:flutter/material.dart';
import 'package:fruits_market/core/utils/appColors.dart';
import 'package:fruits_market/core/utils/config_size.dart';
import 'package:fruits_market/core/utils/text_style.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, this.onTap});
  final String text;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 60,
        width: ConfigSize.screenWidth,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: AppColors.bottonColor,
        ),
        child: Center(
          child: Text(
            text,
            style: getbodyStyle(),
          ),
        ),
      ),
    );
  }
}
