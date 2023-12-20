import 'package:ecommerce_app/model/login_model.dart';
import 'package:flutter/cupertino.dart';

class LoginProvider extends ChangeNotifier {
  LoginModel loginModel = LoginModel(islogin: false);
  void login() {
    loginModel.islogin = true;
    notifyListeners();
  }

  void notlogin() {
    loginModel.islogin = false;
    notifyListeners();
  }
}
