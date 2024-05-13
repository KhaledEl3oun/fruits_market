import 'package:flutter/cupertino.dart';

abstract class AuthRepo {
  Future loginWithFacebook();
  Future loginWithGoogle();
  Future completeInformation({@required String name,
  @required String phoneNumber, @required String address});

}
      