import 'package:flutter/material.dart';
import 'package:test/core/app_export.dart';
import 'package:test/presentation/login_page_without_input_value_two_screen/models/login_page_without_input_value_two_model.dart';

/// A provider class for the LoginPageWithoutInputValueTwoScreen.
///
/// This provider manages the state of the LoginPageWithoutInputValueTwoScreen, including the
/// current loginPageWithoutInputValueTwoModelObj

// ignore_for_file: must_be_immutable
class LoginPageWithoutInputValueTwoProvider extends ChangeNotifier {
  TextEditingController newpasswordController = TextEditingController();

  TextEditingController newpasswordController1 = TextEditingController();

  LoginPageWithoutInputValueTwoModel loginPageWithoutInputValueTwoModelObj =
      LoginPageWithoutInputValueTwoModel();

  bool isShowPassword = true;

  bool isShowPassword1 = true;

  @override
  void dispose() {
    super.dispose();
    newpasswordController.dispose();
    newpasswordController1.dispose();
  }

  void changePasswordVisibility() {
    isShowPassword = !isShowPassword;
    notifyListeners();
  }

  void changePasswordVisibility1() {
    isShowPassword1 = !isShowPassword1;
    notifyListeners();
  }
}
