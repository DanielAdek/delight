import 'package:flutter/material.dart';
import 'package:test/core/app_export.dart';
import 'package:test/presentation/login_page_screen/models/login_page_model.dart';

/// A provider class for the LoginPageScreen.
///
/// This provider manages the state of the LoginPageScreen, including the
/// current loginPageModelObj

// ignore_for_file: must_be_immutable
class LoginPageProvider extends ChangeNotifier {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  LoginPageModel loginPageModelObj = LoginPageModel();

  bool isShowPassword = true;

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  onSelected(dynamic value) {
    for (var element in loginPageModelObj.dropdownItemList) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }

  void changePasswordVisibility() {
    isShowPassword = !isShowPassword;
    notifyListeners();
  }
}
