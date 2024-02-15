import 'models/forgot_password_model.dart';
import 'package:flutter/material.dart';
import 'package:test/core/app_export.dart';
import 'package:test/core/utils/validation_functions.dart';
import 'package:test/widgets/app_bar/appbar_leading_image.dart';
import 'package:test/widgets/app_bar/custom_app_bar.dart';
import 'package:test/widgets/custom_elevated_button.dart';
import 'package:test/widgets/custom_text_form_field.dart';
import 'provider/forgot_password_provider.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  ForgotPasswordScreenState createState() => ForgotPasswordScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ForgotPasswordProvider(),
        child: ForgotPasswordScreen());
  }
}

// ignore_for_file: must_be_immutable
class ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
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
                                  _buildOneColumn(context),
                                  Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 38.h,
                                              vertical: 111.v),
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
                                                _buildInactiveFieldComponent(
                                                    context),
                                                SizedBox(height: 13.v),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 1.h),
                                                    child: Text(
                                                        "msg_verification_code"
                                                            .tr,
                                                        style: CustomTextStyles
                                                            .bodyMediumBlack900)),
                                                SizedBox(height: 5.v),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 1.h),
                                                    child: Selector<
                                                            ForgotPasswordProvider,
                                                            TextEditingController?>(
                                                        selector: (context,
                                                                provider) =>
                                                            provider
                                                                .enterVerificationCodeController,
                                                        builder: (context,
                                                            enterVerificationCodeController,
                                                            child) {
                                                          return CustomTextFormField(
                                                              controller:
                                                                  enterVerificationCodeController,
                                                              hintText:
                                                                  "msg_enter_verification"
                                                                      .tr,
                                                              hintStyle:
                                                                  CustomTextStyles
                                                                      .bodySmallOnPrimaryContainer,
                                                              textInputAction:
                                                                  TextInputAction
                                                                      .done,
                                                              contentPadding:
                                                                  EdgeInsets.symmetric(
                                                                      horizontal:
                                                                          26.h,
                                                                      vertical:
                                                                          13.v),
                                                              borderDecoration:
                                                                  TextFormFieldStyleHelper
                                                                      .outlineOnPrimaryContainer);
                                                        })),
                                                SizedBox(height: 13.v),
                                                CustomElevatedButton(
                                                    text: "lbl_proceed".tr,
                                                    margin: EdgeInsets.only(
                                                        left: 1.h),
                                                    buttonStyle:
                                                        CustomButtonStyles
                                                            .fillPrimary),
                                                SizedBox(height: 13.v)
                                              ])))
                                ])))))));
  }

  /// Section Widget
  Widget _buildOneColumn(BuildContext context) {
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
                      margin: EdgeInsets.only(right: 172.h)),
                  SizedBox(height: 27.v),
                  Padding(
                      padding: EdgeInsets.only(right: 97.h),
                      child: Text("lbl_forgot_password".tr,
                          style: theme.textTheme.headlineSmall)),
                  SizedBox(height: 27.v)
                ])));
  }

  /// Section Widget
  Widget _buildInactiveFieldComponent(BuildContext context) {
    return GestureDetector(
        onTap: () {
          onTapInactiveFieldComponent(context);
        },
        child: Padding(
            padding: EdgeInsets.only(left: 1.h),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text("lbl_email_address".tr,
                  style: CustomTextStyles.bodyMediumBlack900),
              SizedBox(height: 5.v),
              Selector<ForgotPasswordProvider, TextEditingController?>(
                  selector: (context, provider) => provider.emailController,
                  builder: (context, emailController, child) {
                    return CustomTextFormField(
                        controller: emailController,
                        hintText: "msg_enter_your_registered".tr,
                        textInputType: TextInputType.emailAddress,
                        validator: (value) {
                          if (value == null ||
                              (!isValidEmail(value, isRequired: true))) {
                            return "err_msg_please_enter_valid_email".tr;
                          }
                          return null;
                        },
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 26.h, vertical: 12.v),
                        borderDecoration:
                            TextFormFieldStyleHelper.outlineOnPrimaryContainer);
                  })
            ])));
  }

  onTapInactiveFieldComponent(BuildContext context) {
    // TODO: implement Actions
  }
}
