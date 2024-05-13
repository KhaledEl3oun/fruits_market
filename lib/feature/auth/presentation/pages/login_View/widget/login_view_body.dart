import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fruits_market/core/routing/routing.dart';
import 'package:fruits_market/core/utils/appColors.dart';
import 'package:fruits_market/core/utils/config_size.dart';
import 'package:fruits_market/core/utils/text_style.dart';
import 'package:fruits_market/feature/auth/presentation/pages/complete_information/complete_information.dart';
import 'package:fruits_market/feature/auth/presentation/pages/login_View/widget/customButton_icon.dart';
import 'package:gap/gap.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: ConfigSize.defultSize! * 1,
          vertical: ConfigSize.defultSize! * 5),
      child: Center(
        child: Column(
          children: [
            SizedBox(
                height: ConfigSize.defultSize! * 26,
                width: ConfigSize.defultSize! * 26,
                child: Image.asset('assets/image/logo (2).png')),
            Text(
              'Fruits Market',
              style: getTitleStyle(color: AppColors.bottonColor, fontSize: 41),
            ),
            const Expanded(child: SizedBox()),
            Row(
              children: [
                Flexible(
                    flex: 1,
                    child: CustomButtonIcon(
                      icon: FontAwesomeIcons.google,
                      text: 'Login with',
                      color: Colors.pinkAccent,
                      onTap: () {
                        pushReplaceMent(context, const ComInformation());
                      },
                    )),
                Gap(ConfigSize.defultSize! * 2),
                Flexible(
                    flex: 1,
                    child: CustomButtonIcon(
                      icon: FontAwesomeIcons.facebook,
                      text: 'Login with',
                      color: Colors.blue,
                      onTap: () {},
                    )),
              ],
            ),
            const Expanded(child: SizedBox()),
          ],
        ),
      ),
    );
  }
}
