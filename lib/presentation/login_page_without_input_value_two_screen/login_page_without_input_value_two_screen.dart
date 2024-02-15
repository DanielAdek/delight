import 'models/login_page_without_input_value_two_model.dart';
import 'package:flutter/material.dart';
import 'package:test/core/app_export.dart';
import 'package:test/core/utils/validation_functions.dart';
import 'package:test/widgets/app_bar/appbar_leading_image.dart';
import 'package:test/widgets/app_bar/custom_app_bar.dart';
import 'package:test/widgets/custom_elevated_button.dart';
import 'package:test/widgets/custom_text_form_field.dart';
import 'provider/login_page_without_input_value_two_provider.dart';

class LoginPageWithoutInputValueTwoScreen extends StatefulWidget {
  const LoginPageWithoutInputValueTwoScreen({Key? key}) : super(key: key);

  @override
  LoginPageWithoutInputValueTwoScreenState createState() =>
      LoginPageWithoutInputValueTwoScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => LoginPageWithoutInputValueTwoProvider(),
        child: LoginPageWithoutInputValueTwoScreen());
  }
}

// ignore_for_file: must_be_immutable
class LoginPageWithoutInputValueTwoScreenState
    extends State<LoginPageWithoutInputValueTwoScreen> {
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
                                  _buildLoginPageAppBar(context),
                                  Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 37.h,
                                              vertical: 115.v),
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      ImageConstant.imgGroup7),
                                                  fit: BoxFit.cover)),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 3.h),
                                                    child: Text(
                                                        "msg_create_new_password"
                                                            .tr,
                                                        style: CustomTextStyles
                                                            .bodySmallBlack900)),
                                                SizedBox(height: 5.v),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 3.h),
                                                    child: Consumer<
                                                            LoginPageWithoutInputValueTwoProvider>(
                                                        builder: (context,
                                                            provider, child) {
                                                      return CustomTextFormField(
                                                          controller: provider
                                                              .newpasswordController,
                                                          hintText:
                                                              "lbl_enter_password"
                                                                  .tr,
                                                          hintStyle: CustomTextStyles
                                                              .bodySmallOnPrimaryContainer,
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
                                                          contentPadding:
                                                              EdgeInsets.only(
                                                                  left: 26.h,
                                                                  top: 14.v,
                                                                  bottom: 14.v),
                                                          borderDecoration: TextFormFieldStyleHelper.outlineOnPrimaryContainer);
                                                    })),
                                                SizedBox(height: 13.v),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 3.h),
                                                    child: Text(
                                                        "msg_confirm_new_password"
                                                            .tr,
                                                        style: CustomTextStyles
                                                            .bodySmallBlack900)),
                                                SizedBox(height: 5.v),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 3.h),
                                                    child: Consumer<
                                                            LoginPageWithoutInputValueTwoProvider>(
                                                        builder: (context,
                                                            provider, child) {
                                                      return CustomTextFormField(
                                                          controller: provider
                                                              .newpasswordController1,
                                                          textInputAction:
                                                              TextInputAction
                                                                  .done,
                                                          suffix: InkWell(
                                                              onTap: () {
                                                                provider
                                                                    .changePasswordVisibility1();
                                                              },
                                                              child: Container(
                                                                  margin: EdgeInsets
                                                                      .fromLTRB(
                                                                          30.h,
                                                                          11.v,
                                                                          15.h,
                                                                          10.v),
                                                                  child: CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgEyeoffoutline,
                                                                      height: 24
                                                                          .adaptSize,
                                                                      width: 24
                                                                          .adaptSize))),
                                                          suffixConstraints:
                                                              BoxConstraints(
                                                                  maxHeight:
                                                                      46.v),
                                                          obscureText: provider
                                                              .isShowPassword1,
                                                          borderDecoration:
                                                              TextFormFieldStyleHelper
                                                                  .outlineOnPrimaryContainer);
                                                    })),
                                                SizedBox(height: 14.v),
                                                CustomElevatedButton(
                                                    text: "lbl_change_password"
                                                        .tr,
                                                    margin: EdgeInsets.only(
                                                        left: 3.h),
                                                    buttonTextStyle:
                                                        CustomTextStyles
                                                            .bodyMediumWhiteA700_1,
                                                    onPressed: () {
                                                      onTapChangePassword(
                                                          context);
                                                    }),
                                                SizedBox(height: 14.v)
                                              ])))
                                ])))))));
  }

  /// Section Widget
  Widget _buildLoginPageAppBar(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Container(
            padding: EdgeInsets.symmetric(vertical: 10.v),
            decoration: AppDecoration.fillPrimary,
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CustomAppBar(
                      leadingWidth: 429.h,
                      leading: AppbarLeadingImage(
                          imagePath: ImageConstant.imgVector,
                          margin: EdgeInsets.fromLTRB(37.h, 8.v, 383.h, 8.v))),
                  SizedBox(height: 23.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgLock,
                      height: 49.v,
                      width: 50.h,
                      margin: EdgeInsets.only(right: 171.h)),
                  SizedBox(height: 27.v),
                  Padding(
                      padding: EdgeInsets.only(right: 86.h),
                      child: Text("lbl_change_password".tr,
                          style: theme.textTheme.headlineSmall)),
                  SizedBox(height: 27.v)
                ])));
  }

  onTapChangePassword(BuildContext context) {
    // TODO: implement Actions
  }
}
