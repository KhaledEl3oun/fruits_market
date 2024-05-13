import 'package:flutter/material.dart';
import 'package:fruits_market/core/routing/routing.dart';
import 'package:fruits_market/core/utils/appColors.dart';
import 'package:fruits_market/core/utils/config_size.dart';
import 'package:fruits_market/core/utils/text_style.dart';
import 'package:fruits_market/core/widget/custom_button.dart';
import 'package:fruits_market/feature/auth/presentation/pages/login_View/login_View.dart';
import 'package:gap/gap.dart';

class ComInformationBody extends StatefulWidget {
  const ComInformationBody({super.key});

  @override
  State<ComInformationBody> createState() => _ComInformationBodyState();
}

class _ComInformationBodyState extends State<ComInformationBody> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _name = TextEditingController();
  final TextEditingController _phoneNumber = TextEditingController();
  final TextEditingController _address = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: ConfigSize.defultSize! + 5,
              vertical: ConfigSize.defultSize! + 65),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Enter Your Name',
                  style: getbodyStyle(color: AppColors.blackColor),
                ),
                Gap(ConfigSize.defultSize! + 5),
                TextFormField(
                  controller: _name,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.blackColor),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.blackColor),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                Gap(ConfigSize.defultSize! + 10),
                Text(
                  'Enter Your Phone Number',
                  style: getbodyStyle(color: AppColors.blackColor),
                ),
                Gap(ConfigSize.defultSize! + 5),
                TextFormField(
                  controller: _phoneNumber,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.blackColor),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.blackColor),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                Gap(ConfigSize.defultSize! + 10),
                Text(
                  'Enter Your Address',
                  style: getbodyStyle(color: AppColors.blackColor),
                ),
                Gap(ConfigSize.defultSize! + 5),
                TextFormField(
                  controller: _address,
                  maxLines: 5,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.blackColor),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.blackColor),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                Gap(ConfigSize.defultSize! + 20),
                CustomButton(
                    onTap: () {
                      pushReplaceMent(context, const LoginView());
                    },
                    text: 'Login')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
