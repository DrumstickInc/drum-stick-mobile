import 'dart:async';

import 'package:flutter_app/models/user1.dart';
import 'package:flutter_app/utils/network_util.dart';

class RestData {
  NetworkUtil _netUtil = new NetworkUtil();
  static final BASE_URL = "";
  static final LOGIN_URL = BASE_URL + "/";


  Future<User1> login(String username, String password) {
    return new Future.value(new User1(username, password));
  }
}