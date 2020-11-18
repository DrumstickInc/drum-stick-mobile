import 'package:flutter_app/data/rest_data.dart';
import 'package:flutter_app/models/user1.dart';

abstract class LoginPageContract {
  void onLoginSuccess(User1 user);
  void onLoginError(String error);
}

class LoginPagePresenter {
  LoginPageContract _view;
  RestData api = new RestData();
  LoginPagePresenter(this._view);

  doLogin(String username, String password) {
    api
        .login(username, password)
        .then((user) => _view.onLoginSuccess(user))
        .catchError((onError) => _view.onLoginError(onError.toString()));
  }
}