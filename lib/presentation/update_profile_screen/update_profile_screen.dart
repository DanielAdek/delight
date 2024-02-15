import 'models/update_profile_model.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/material.dart';
import 'package:test/core/app_export.dart';
import 'package:test/core/utils/validation_functions.dart';
import 'package:test/widgets/app_bar/appbar_leading_image.dart';
import 'package:test/widgets/app_bar/appbar_title.dart';
import 'package:test/widgets/app_bar/custom_app_bar.dart';
import 'package:test/widgets/custom_drop_down.dart';
import 'package:test/widgets/custom_phone_number.dart';
import 'package:test/widgets/custom_text_form_field.dart';
import 'provider/update_profile_provider.dart';

class UpdateProfileScreen extends StatefulWidget {
  const UpdateProfileScreen({Key? key})
      : super(
          key: key,
        );

  @override
  UpdateProfileScreenState createState() => UpdateProfileScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => UpdateProfileProvider(),
      child: UpdateProfileScreen(),
    );
  }
}

class UpdateProfileScreenState extends State<UpdateProfileScreen> {
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
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                _buildSeventyTwo(context),
                SizedBox(height: 13.v),
                Expanded(
                  child: SingleChildScrollView(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 38.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: 160.adaptSize,
                              width: 160.adaptSize,
                              padding: EdgeInsets.all(5.h),
                              decoration: AppDecoration.fillIndigo.copyWith(
                                borderRadius: BorderRadiusStyle.circleBorder80,
                              ),
                              child: CustomImageView(
                                imagePath: ImageConstant.imgFrame639,
                                height: 150.adaptSize,
                                width: 150.adaptSize,
                                radius: BorderRadius.circular(
                                  75.h,
                                ),
                                alignment: Alignment.center,
                              ),
                            ),
                          ),
                          SizedBox(height: 7.v),
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              "lbl_student_name".tr,
                              style: theme.textTheme.labelLarge,
                            ),
                          ),
                          SizedBox(height: 6.v),
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              "lbl_id_1223203043".tr,
                              style: theme.textTheme.labelLarge,
                            ),
                          ),
                          SizedBox(height: 15.v),
                          Text(
                            "lbl_first_name".tr,
                            style: theme.textTheme.bodyMedium,
                          ),
                          SizedBox(height: 5.v),
                          _buildFirstName(context),
                          SizedBox(height: 15.v),
                          Text(
                            "lbl_last_name".tr,
                            style: theme.textTheme.bodyMedium,
                          ),
                          SizedBox(height: 5.v),
                          _buildLastName(context),
                          SizedBox(height: 15.v),
                          Text(
                            "lbl_email_address".tr,
                            style: theme.textTheme.bodyMedium,
                          ),
                          SizedBox(height: 5.v),
                          _buildEmail(context),
                          SizedBox(height: 15.v),
                          Text(
                            "lbl_phone_number".tr,
                            style: theme.textTheme.bodyMedium,
                          ),
                          SizedBox(height: 5.v),
                          _buildPhoneNumber(context),
                          SizedBox(height: 17.v),
                          Text(
                            "lbl_country".tr,
                            style: theme.textTheme.bodyMedium,
                          ),
                          SizedBox(height: 3.v),
                          Selector<UpdateProfileProvider, UpdateProfileModel?>(
                            selector: (
                              context,
                              provider,
                            ) =>
                                provider.updateProfileModelObj,
                            builder: (context, updateProfileModelObj, child) {
                              return CustomDropDown(
                                icon: Container(
                                  margin:
                                      EdgeInsets.fromLTRB(30.h, 8.v, 12.h, 8.v),
                                  child: CustomImageView(
                                    imagePath: ImageConstant.imgMenudown,
                                    height: 24.v,
                                    width: 26.h,
                                  ),
                                ),
                                hintText: "lbl_nigeria".tr,
                                items:
                                    updateProfileModelObj?.dropdownItemList ??
                                        [],
                                onChanged: (value) {
                                  context
                                      .read<UpdateProfileProvider>()
                                      .onSelected(value);
                                },
                              );
                            },
                          ),
                          SizedBox(height: 15.v),
                          Text(
                            "lbl_state".tr,
                            style: theme.textTheme.bodyMedium,
                          ),
                          SizedBox(height: 5.v),
                          Selector<UpdateProfileProvider, UpdateProfileModel?>(
                            selector: (
                              context,
                              provider,
                            ) =>
                                provider.updateProfileModelObj,
                            builder: (context, updateProfileModelObj, child) {
                              return CustomDropDown(
                                icon: Container(
                                  margin:
                                      EdgeInsets.fromLTRB(30.h, 8.v, 12.h, 8.v),
                                  child: CustomImageView(
                                    imagePath: ImageConstant.imgMenudown,
                                    height: 24.v,
                                    width: 26.h,
                                  ),
                                ),
                                hintText: "lbl_lagos".tr,
                                items:
                                    updateProfileModelObj?.dropdownItemList1 ??
                                        [],
                                onChanged: (value) {
                                  context
                                      .read<UpdateProfileProvider>()
                                      .onSelected1(value);
                                },
                              );
                            },
                          ),
                          SizedBox(height: 16.v),
                          Text(
                            "lbl_city".tr,
                            style: theme.textTheme.bodyMedium,
                          ),
                          SizedBox(height: 4.v),
                          Selector<UpdateProfileProvider, UpdateProfileModel?>(
                            selector: (
                              context,
                              provider,
                            ) =>
                                provider.updateProfileModelObj,
                            builder: (context, updateProfileModelObj, child) {
                              return CustomDropDown(
                                icon: Container(
                                  margin:
                                      EdgeInsets.fromLTRB(30.h, 8.v, 11.h, 8.v),
                                  child: CustomImageView(
                                    imagePath: ImageConstant.imgMenudown,
                                    height: 24.v,
                                    width: 28.h,
                                  ),
                                ),
                                hintText: "lbl_lekki".tr,
                                items:
                                    updateProfileModelObj?.dropdownItemList2 ??
                                        [],
                                onChanged: (value) {
                                  context
                                      .read<UpdateProfileProvider>()
                                      .onSelected2(value);
                                },
                              );
                            },
                          ),
                          SizedBox(height: 16.v),
                          Text(
                            "lbl_street_address".tr,
                            style: theme.textTheme.bodyMedium,
                          ),
                          SizedBox(height: 5.v),
                          _buildStreetAddress(context),
                          SizedBox(height: 16.v),
                          Text(
                            "lbl_class".tr,
                            style: theme.textTheme.bodyMedium,
                          ),
                          SizedBox(height: 5.v),
                          _buildJssCounter(context),
                          SizedBox(height: 16.v),
                          Text(
                            "lbl_term".tr,
                            style: theme.textTheme.bodyMedium,
                          ),
                          SizedBox(height: 5.v),
                          _buildTermValue(context),
                          SizedBox(height: 16.v),
                          Text(
                            "msg_academic_session".tr,
                            style: theme.textTheme.bodyMedium,
                          ),
                          SizedBox(height: 5.v),
                          _buildPrice(context),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSeventyTwo(BuildContext context) {
    return SizedBox(
      height: 45.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 12.v,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: theme.colorScheme.primary,
              ),
            ),
          ),
          CustomAppBar(
            height: 45.v,
            leadingWidth: 46.h,
            leading: AppbarLeadingImage(
              imagePath: ImageConstant.imgChevronLeft,
              margin: EdgeInsets.only(
                left: 22.h,
                top: 10.v,
                bottom: 11.v,
              ),
            ),
            title: AppbarTitle(
              text: "msg_profile_information".tr,
              margin: EdgeInsets.only(left: 14.h),
            ),
            styleType: Style.bgFill,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFirstName(BuildContext context) {
    return Selector<UpdateProfileProvider, TextEditingController?>(
      selector: (
        context,
        provider,
      ) =>
          provider.firstNameController,
      builder: (context, firstNameController, child) {
        return CustomTextFormField(
          controller: firstNameController,
          hintText: "lbl_philip".tr,
          hintStyle: theme.textTheme.bodyMedium!,
          borderDecoration:
              TextFormFieldStyleHelper.outlineOnPrimaryContainerTL20,
          fillColor: appTheme.indigo5001,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildLastName(BuildContext context) {
    return Selector<UpdateProfileProvider, TextEditingController?>(
      selector: (
        context,
        provider,
      ) =>
          provider.lastNameController,
      builder: (context, lastNameController, child) {
        return CustomTextFormField(
          controller: lastNameController,
          hintText: "lbl_james".tr,
          hintStyle: theme.textTheme.bodyMedium!,
          borderDecoration:
              TextFormFieldStyleHelper.outlineOnPrimaryContainerTL20,
          fillColor: appTheme.indigo5001,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Selector<UpdateProfileProvider, TextEditingController?>(
      selector: (
        context,
        provider,
      ) =>
          provider.emailController,
      builder: (context, emailController, child) {
        return CustomTextFormField(
          controller: emailController,
          hintText: "msg_email_example_com".tr,
          hintStyle: theme.textTheme.bodyMedium!,
          textInputType: TextInputType.emailAddress,
          validator: (value) {
            if (value == null || (!isValidEmail(value, isRequired: true))) {
              return "err_msg_please_enter_valid_email".tr;
            }
            return null;
          },
          borderDecoration:
              TextFormFieldStyleHelper.outlineOnPrimaryContainerTL20,
          fillColor: appTheme.indigo5001,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildPhoneNumber(BuildContext context) {
    return Consumer<UpdateProfileProvider>(
      builder: (context, provider, child) {
        return CustomPhoneNumber(
          country: provider.selectedCountry ??
              CountryPickerUtils.getCountryByPhoneCode('1'),
          controller: provider.phoneNumberController,
          onTap: (Country value) {
            context.read<UpdateProfileProvider>().changeCountry(value);
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildStreetAddress(BuildContext context) {
    return Selector<UpdateProfileProvider, TextEditingController?>(
      selector: (
        context,
        provider,
      ) =>
          provider.streetAddressController,
      builder: (context, streetAddressController, child) {
        return CustomTextFormField(
          controller: streetAddressController,
          hintText: "msg_14_yeye_olofin".tr,
          hintStyle: theme.textTheme.bodyMedium!,
          borderDecoration:
              TextFormFieldStyleHelper.outlineOnPrimaryContainerTL20,
          fillColor: appTheme.indigo5001,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildJssCounter(BuildContext context) {
    return Selector<UpdateProfileProvider, TextEditingController?>(
      selector: (
        context,
        provider,
      ) =>
          provider.jssCounterController,
      builder: (context, jssCounterController, child) {
        return CustomTextFormField(
          controller: jssCounterController,
          hintText: "lbl_jss_3".tr,
          hintStyle: theme.textTheme.bodyMedium!,
          borderDecoration:
              TextFormFieldStyleHelper.outlineOnPrimaryContainerTL20,
          fillColor: appTheme.indigo5001,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildTermValue(BuildContext context) {
    return Selector<UpdateProfileProvider, TextEditingController?>(
      selector: (
        context,
        provider,
      ) =>
          provider.termValueController,
      builder: (context, termValueController, child) {
        return CustomTextFormField(
          controller: termValueController,
          hintText: "lbl_second_term".tr,
          hintStyle: theme.textTheme.bodyMedium!,
          borderDecoration:
              TextFormFieldStyleHelper.outlineOnPrimaryContainerTL20,
          fillColor: appTheme.indigo5001,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildPrice(BuildContext context) {
    return Selector<UpdateProfileProvider, TextEditingController?>(
      selector: (
        context,
        provider,
      ) =>
          provider.priceController,
      builder: (context, priceController, child) {
        return CustomTextFormField(
          controller: priceController,
          hintText: "msg_2021_2022_2021_09_01".tr,
          hintStyle: theme.textTheme.bodyMedium!,
          textInputAction: TextInputAction.done,
          borderDecoration:
              TextFormFieldStyleHelper.outlineOnPrimaryContainerTL20,
          fillColor: appTheme.indigo5001,
        );
      },
    );
  }
}
