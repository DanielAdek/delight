import 'models/login_page_model.dart';
import 'package:flutter/material.dart';
import 'package:test/core/app_export.dart';
import 'package:test/core/utils/validation_functions.dart';
import 'package:test/widgets/custom_drop_down.dart';
import 'package:test/widgets/custom_elevated_button.dart';
import 'package:test/widgets/custom_text_form_field.dart';
import 'provider/login_page_provider.dart';

class LoginPageScreen extends StatefulWidget {
  const LoginPageScreen({Key? key}) : super(key: key);

  @override
  LoginPageScreenState createState() => LoginPageScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => LoginPageProvider(), child: LoginPageScreen());
  }
}

// ignore_for_file: must_be_immutable
class LoginPageScreenState extends State<LoginPageScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: SizedBox(
                            height: 886.v,
                            width: double.maxFinite,
                            child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  _buildWelcomeBackSection(context),
                                  Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 38.h,
                                              vertical: 104.v),
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      ImageConstant.imgGroup7),
                                                  fit: BoxFit.cover)),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                _buildUserTypeSection(context),
                                                SizedBox(height: 13.v),
                                                _buildEmailAddressSection(
                                                    context),
                                                SizedBox(height: 13.v),
                                                Align(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 1.h),
                                                        child: Text(
                                                            "lbl_password".tr,
                                                            style: CustomTextStyles
                                                                .bodySmallBlack900))),
                                                SizedBox(height: 5.v),
                                                Consumer<LoginPageProvider>(
                                                    builder: (context, provider,
                                                        child) {
                                                  return CustomTextFormField(
                                                      controller: provider
                                                          .passwordController,
                                                      hintText: "lbl_enter_password"
                                                          .tr,
                                                      textInputAction:
                                                          TextInputAction.done,
                                                      textInputType: TextInputType
                                                          .visiblePassword,
                                                      suffix: InkWell(
                                                          onTap: () {
                                                            provider
                                                                .changePasswordVisibility();
                                                          },
                                                          child: Container(
                                                              margin: EdgeInsets.fromLTRB(
                                                                  30.h,
                                                                  11.v,
                                                                  15.h,
                                                                  10.v),
                                                              child: CustomImageView(
                                                                  imagePath: ImageConstant
                                                                      .imgEyeoutline,
                                                                  height: 24
                                                                      .adaptSize,
                                                                  width: 24
                                                                      .adaptSize))),
                                                      suffixConstraints: BoxConstraints(
                                                          maxHeight: 46.v),
                                                      validator: (value) {
                                                        if (value == null ||
                                                            (!isValidPassword(
                                                                value,
                                                                isRequired:
                                                                    true))) {
                                                          return "err_msg_please_enter_valid_password"
                                                              .tr;
                                                        }
                                                        return null;
                                                      },
                                                      obscureText: provider
                                                          .isShowPassword,
                                                      contentPadding: EdgeInsets.only(
                                                          left: 26.h,
                                                          top: 12.v,
                                                          bottom: 12.v),
                                                      borderDecoration:
                                                          TextFormFieldStyleHelper
                                                              .outlineOnPrimaryContainer);
                                                }),
                                                SizedBox(height: 8.v),
                                                Align(
                                                    alignment:
                                                        Alignment.centerRight,
                                                    child: GestureDetector(
                                                        onTap: () {
                                                          onTapTxtForgotPassword(
                                                              context);
                                                        },
                                                        child: Text(
                                                            "msg_forgot_password"
                                                                .tr,
                                                            style: CustomTextStyles
                                                                .bodyMediumPrimary))),
                                                SizedBox(height: 13.v),
                                                CustomElevatedButton(
                                                    text: "lbl_login".tr,
                                                    buttonStyle:
                                                        CustomButtonStyles
                                                            .fillPrimary),
                                                SizedBox(height: 13.v)
                                              ])))
                                ])))))));
  }

  /// Section Widget
  Widget _buildWelcomeBackSection(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 77.h, vertical: 30.v),
            decoration: AppDecoration.fillPrimary,
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgLock, height: 49.v, width: 50.h),
              SizedBox(height: 24.v),
              Text("lbl_welcome_back".tr, style: theme.textTheme.headlineSmall),
              SizedBox(height: 5.v),
              Text("msg_sign_into_your_account".tr,
                  style: CustomTextStyles.bodyMediumWhiteA70015),
              SizedBox(height: 5.v)
            ])));
  }

  /// Section Widget
  Widget _buildUserTypeSection(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 1.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("msg_select_user_type".tr,
              style: CustomTextStyles.bodyMediumBlack900),
          SizedBox(height: 3.v),
          Selector<LoginPageProvider, LoginPageModel?>(
              selector: (context, provider) => provider.loginPageModelObj,
              builder: (context, loginPageModelObj, child) {
                return CustomDropDown(
                    icon: Container(
                        margin: EdgeInsets.fromLTRB(30.h, 11.v, 15.h, 10.v),
                        child: CustomImageView(
                            imagePath: ImageConstant.imgArrowdown,
                            height: 24.adaptSize,
                            width: 24.adaptSize)),
                    hintText: "lbl_select_user".tr,
                    items: loginPageModelObj?.dropdownItemList ?? [],
                    contentPadding:
                        EdgeInsets.only(left: 26.h, top: 12.v, bottom: 12.v),
                    borderDecoration:
                        DropDownStyleHelper.outlineOnPrimaryContainer,
                    onChanged: (value) {
                      context.read<LoginPageProvider>().onSelected(value);
                    });
              })
        ]));
  }

  /// Section Widget
  Widget _buildEmailAddressSection(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 1.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("lbl_email_address".tr,
              style: CustomTextStyles.bodyMediumBlack900),
          SizedBox(height: 5.v),
          Selector<LoginPageProvider, TextEditingController?>(
              selector: (context, provider) => provider.emailController,
              builder: (context, emailController, child) {
                return CustomTextFormField(
                    controller: emailController,
                    hintText: "msg_enter_email_address".tr,
                    textInputType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value == null ||
                          (!isValidEmail(value, isRequired: true))) {
                        return "err_msg_please_enter_valid_email".tr;
                      }
                      return null;
                    },
                    contentPadding: EdgeInsets.all(12.h),
                    borderDecoration:
                        TextFormFieldStyleHelper.outlineOnPrimaryContainer);
              })
        ]));
  }

  /// Navigates to the forgotPasswordScreen when the action is triggered.
  onTapTxtForgotPassword(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.forgotPasswordScreen,
    );
  }
}
