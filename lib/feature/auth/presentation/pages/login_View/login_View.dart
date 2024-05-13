import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fruits_market/feature/auth/presentation/pages/login_View/widget/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold( 
      body: LoginViewBody(),
    );
  }
}
