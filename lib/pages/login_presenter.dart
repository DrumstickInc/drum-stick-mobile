import 'package:flutter_app/models/data.dart';

abstract class LoginPageContract{
  void onLoginSuccess(User user);
  void onLoginError(String error);
}

class LoginPagePresenter{
  LoginPageContract_view;
  LoginPagePresenter(this._view)
}