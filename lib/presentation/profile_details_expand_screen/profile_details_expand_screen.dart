import 'models/profile_details_expand_model.dart';
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
import 'provider/profile_details_expand_provider.dart';

class ProfileDetailsExpandScreen extends StatefulWidget {
  const ProfileDetailsExpandScreen({Key? key}) : super(key: key);

  @override
  ProfileDetailsExpandScreenState createState() =>
      ProfileDetailsExpandScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ProfileDetailsExpandProvider(),
        child: ProfileDetailsExpandScreen());
  }
}

// ignore_for_file: must_be_immutable
class ProfileDetailsExpandScreenState
    extends State<ProfileDetailsExpandScreen> {
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
                    child: Column(children: [
                      _buildEightyFourStack(context),
                      Expanded(
                          child: SingleChildScrollView(
                              child: Padding(
                                  padding: EdgeInsets.only(bottom: 5.v),
                                  child: Column(children: [
                                    _buildStudentInfoTopColumn(context),
                                    SizedBox(height: 18.v),
                                    Container(
                                        height: 160.adaptSize,
                                        width: 160.adaptSize,
                                        padding: EdgeInsets.all(5.h),
                                        decoration: AppDecoration.fillIndigo
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .circleBorder80),
                                        child: CustomImageView(
                                            imagePath:
                                                ImageConstant.imgFrame639,
                                            height: 150.adaptSize,
                                            width: 150.adaptSize,
                                            radius: BorderRadius.circular(75.h),
                                            alignment: Alignment.center)),
                                    SizedBox(height: 14.v),
                                    Text("lbl_student_name".tr,
                                        style: theme.textTheme.labelLarge),
                                    SizedBox(height: 13.v),
                                    Text("lbl_id_1223203043".tr,
                                        style: theme.textTheme.labelLarge),
                                    SizedBox(height: 42.v),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding:
                                                EdgeInsets.only(left: 38.h),
                                            child: Text(
                                                "msg_personal_information".tr,
                                                style: CustomTextStyles
                                                    .titleSmallBlack900))),
                                    SizedBox(height: 15.v),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding:
                                                EdgeInsets.only(left: 38.h),
                                            child: Text("lbl_first_name".tr,
                                                style: theme
                                                    .textTheme.bodyMedium))),
                                    SizedBox(height: 5.v),
                                    _buildFirstNameEditText(context),
                                    SizedBox(height: 15.v),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding:
                                                EdgeInsets.only(left: 38.h),
                                            child: Text("lbl_middle_name".tr,
                                                style: theme
                                                    .textTheme.bodyMedium))),
                                    SizedBox(height: 5.v),
                                    _buildMiddleNameEditText(context),
                                    SizedBox(height: 15.v),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding:
                                                EdgeInsets.only(left: 38.h),
                                            child: Text("lbl_last_name".tr,
                                                style: theme
                                                    .textTheme.bodyMedium))),
                                    SizedBox(height: 5.v),
                                    _buildLastNameEditText(context),
                                    SizedBox(height: 15.v),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding:
                                                EdgeInsets.only(left: 38.h),
                                            child: Text("lbl_gender".tr,
                                                style: theme
                                                    .textTheme.bodyMedium))),
                                    SizedBox(height: 5.v),
                                    _buildGenderValueEditText(context),
                                    SizedBox(height: 15.v),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding:
                                                EdgeInsets.only(left: 38.h),
                                            child: Text("lbl_date_of_birth".tr,
                                                style: theme
                                                    .textTheme.bodyMedium))),
                                    SizedBox(height: 5.v),
                                    _buildDateOfBirthEditText(context),
                                    SizedBox(height: 15.v),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding:
                                                EdgeInsets.only(left: 38.h),
                                            child: Text("lbl_contact_info".tr,
                                                style: CustomTextStyles
                                                    .titleSmallBlack900))),
                                    SizedBox(height: 15.v),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding:
                                                EdgeInsets.only(left: 38.h),
                                            child: Text("lbl_email_address".tr,
                                                style: theme
                                                    .textTheme.bodyMedium))),
                                    SizedBox(height: 5.v),
                                    _buildEmailEditText(context),
                                    SizedBox(height: 15.v),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding:
                                                EdgeInsets.only(left: 38.h),
                                            child: Text("lbl_phone_number".tr,
                                                style: theme
                                                    .textTheme.bodyMedium))),
                                    SizedBox(height: 5.v),
                                    Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 38.h),
                                        child: _buildPhoneNumber(context)),
                                    SizedBox(height: 17.v),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding:
                                                EdgeInsets.only(left: 38.h),
                                            child: Text("lbl_country".tr,
                                                style: theme
                                                    .textTheme.bodyMedium))),
                                    SizedBox(height: 3.v),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 38.h, right: 39.h),
                                        child: Selector<
                                                ProfileDetailsExpandProvider,
                                                ProfileDetailsExpandModel?>(
                                            selector: (context, provider) =>
                                                provider
                                                    .profileDetailsExpandModelObj,
                                            builder: (context,
                                                profileDetailsExpandModelObj,
                                                child) {
                                              return CustomDropDown(
                                                  icon: Container(
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              30.h,
                                                              8.v,
                                                              12.h,
                                                              8.v),
                                                      child: CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgMenudown,
                                                          height: 24.v,
                                                          width: 26.h)),
                                                  hintText: "lbl_nigeria".tr,
                                                  items: profileDetailsExpandModelObj
                                                          ?.dropdownItemList ??
                                                      [],
                                                  onChanged: (value) {
                                                    context
                                                        .read<
                                                            ProfileDetailsExpandProvider>()
                                                        .onSelected(value);
                                                  });
                                            })),
                                    SizedBox(height: 15.v),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding:
                                                EdgeInsets.only(left: 38.h),
                                            child: Text(
                                                "msg_residential_address".tr,
                                                style: theme
                                                    .textTheme.bodyMedium))),
                                    SizedBox(height: 5.v),
                                    _buildResidentialAddressEditText(context),
                                    SizedBox(height: 15.v),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding:
                                                EdgeInsets.only(left: 38.h),
                                            child: Text(
                                                "msg_permanent_address".tr,
                                                style: theme
                                                    .textTheme.bodyMedium))),
                                    SizedBox(height: 5.v),
                                    _buildPermanentAddressEditText(context)
                                  ]))))
                    ])))));
  }

  /// Section Widget
  Widget _buildEightyFourStack(BuildContext context) {
    return SizedBox(
        height: 45.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                  height: 12.v,
                  width: double.maxFinite,
                  decoration: BoxDecoration(color: theme.colorScheme.primary))),
          CustomAppBar(
              height: 45.v,
              leadingWidth: 46.h,
              leading: AppbarLeadingImage(
                  imagePath: ImageConstant.imgChevronLeft,
                  margin: EdgeInsets.only(left: 22.h, top: 10.v, bottom: 11.v)),
              title: AppbarTitle(
                  text: "msg_student_information".tr,
                  margin: EdgeInsets.only(left: 14.h)),
              styleType: Style.bgFill)
        ]));
  }

  /// Section Widget
  Widget _buildStudentInfoTopColumn(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 8.v),
        decoration: AppDecoration.outlineBlack,
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            height: 33.v,
                            width: 95.h,
                            padding: EdgeInsets.symmetric(
                                horizontal: 36.h, vertical: 5.v),
                            decoration: AppDecoration.fillPrimary.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder16),
                            child: CustomImageView(
                                imagePath: ImageConstant
                                    .imgStudentPerson4SvgrepoComWhiteA700,
                                height: 23.adaptSize,
                                width: 23.adaptSize,
                                alignment: Alignment.center)),
                        CustomImageView(
                            imagePath: ImageConstant
                                .imgFamilySvgrepoComOnprimarycontainer,
                            height: 23.adaptSize,
                            width: 23.adaptSize,
                            margin: EdgeInsets.only(bottom: 10.v),
                            onTap: () {
                              onTapImgFamilySvgrepoCom(context);
                            }),
                        CustomImageView(
                            imagePath: ImageConstant.imgFamilyAvatarsSvgrepoCom,
                            height: 23.adaptSize,
                            width: 23.adaptSize,
                            margin: EdgeInsets.only(bottom: 10.v)),
                        CustomImageView(
                            imagePath: ImageConstant.imgDocument1SvgrepoCom,
                            height: 23.adaptSize,
                            width: 23.adaptSize,
                            margin: EdgeInsets.only(bottom: 10.v),
                            onTap: () {
                              onTapImgDocumentSvgrepoCom(context);
                            }),
                        CustomImageView(
                            imagePath: ImageConstant.imgCalendar,
                            height: 23.adaptSize,
                            width: 23.adaptSize,
                            margin: EdgeInsets.only(bottom: 10.v))
                      ])),
              SizedBox(height: 6.v),
              Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: Text("lbl_profile_details".tr,
                      style: theme.textTheme.bodySmall)),
              SizedBox(height: 1.v)
            ]));
  }

  /// Section Widget
  Widget _buildFirstNameEditText(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 38.h, right: 39.h),
        child: Selector<ProfileDetailsExpandProvider, TextEditingController?>(
            selector: (context, provider) =>
                provider.firstNameEditTextController,
            builder: (context, firstNameEditTextController, child) {
              return CustomTextFormField(
                  controller: firstNameEditTextController,
                  hintText: "lbl_philip".tr,
                  hintStyle: theme.textTheme.bodyMedium!,
                  borderDecoration:
                      TextFormFieldStyleHelper.outlineOnPrimaryContainerTL20,
                  fillColor: appTheme.indigo5001);
            }));
  }

  /// Section Widget
  Widget _buildMiddleNameEditText(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 38.h, right: 39.h),
        child: Selector<ProfileDetailsExpandProvider, TextEditingController?>(
            selector: (context, provider) =>
                provider.middleNameEditTextController,
            builder: (context, middleNameEditTextController, child) {
              return CustomTextFormField(
                  controller: middleNameEditTextController,
                  hintText: "lbl_philip".tr,
                  hintStyle: theme.textTheme.bodyMedium!,
                  borderDecoration:
                      TextFormFieldStyleHelper.outlineOnPrimaryContainerTL20,
                  fillColor: appTheme.indigo5001);
            }));
  }

  /// Section Widget
  Widget _buildLastNameEditText(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 38.h, right: 39.h),
        child: Selector<ProfileDetailsExpandProvider, TextEditingController?>(
            selector: (context, provider) =>
                provider.lastNameEditTextController,
            builder: (context, lastNameEditTextController, child) {
              return CustomTextFormField(
                  controller: lastNameEditTextController,
                  hintText: "lbl_james".tr,
                  hintStyle: theme.textTheme.bodyMedium!,
                  borderDecoration:
                      TextFormFieldStyleHelper.outlineOnPrimaryContainerTL20,
                  fillColor: appTheme.indigo5001);
            }));
  }

  /// Section Widget
  Widget _buildGenderValueEditText(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 38.h, right: 39.h),
        child: Selector<ProfileDetailsExpandProvider, TextEditingController?>(
            selector: (context, provider) =>
                provider.genderValueEditTextController,
            builder: (context, genderValueEditTextController, child) {
              return CustomTextFormField(
                  controller: genderValueEditTextController,
                  hintText: "lbl_male".tr,
                  hintStyle: theme.textTheme.bodyMedium!,
                  borderDecoration:
                      TextFormFieldStyleHelper.outlineOnPrimaryContainerTL20,
                  fillColor: appTheme.indigo5001);
            }));
  }

  /// Section Widget
  Widget _buildDateOfBirthEditText(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 38.h, right: 39.h),
        child: Selector<ProfileDetailsExpandProvider, TextEditingController?>(
            selector: (context, provider) =>
                provider.dateOfBirthEditTextController,
            builder: (context, dateOfBirthEditTextController, child) {
              return CustomTextFormField(
                  controller: dateOfBirthEditTextController,
                  hintText: "lbl_2000_09_08".tr,
                  hintStyle: theme.textTheme.bodyMedium!,
                  borderDecoration:
                      TextFormFieldStyleHelper.outlineOnPrimaryContainerTL20,
                  fillColor: appTheme.indigo5001);
            }));
  }

  /// Section Widget
  Widget _buildEmailEditText(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 38.h, right: 39.h),
        child: Selector<ProfileDetailsExpandProvider, TextEditingController?>(
            selector: (context, provider) => provider.emailEditTextController,
            builder: (context, emailEditTextController, child) {
              return CustomTextFormField(
                  controller: emailEditTextController,
                  hintText: "msg_email_example_com".tr,
                  hintStyle: theme.textTheme.bodyMedium!,
                  textInputType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null ||
                        (!isValidEmail(value, isRequired: true))) {
                      return "err_msg_please_enter_valid_email".tr;
                    }
                    return null;
                  },
                  borderDecoration:
                      TextFormFieldStyleHelper.outlineOnPrimaryContainerTL20,
                  fillColor: appTheme.indigo5001);
            }));
  }

  /// Section Widget
  Widget _buildPhoneNumber(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 38.h),
        child: Consumer<ProfileDetailsExpandProvider>(
            builder: (context, provider, child) {
          return CustomPhoneNumber(
              country: provider.selectedCountry ??
                  CountryPickerUtils.getCountryByPhoneCode('1'),
              controller: provider.phoneNumberController,
              onTap: (Country value) {
                context
                    .read<ProfileDetailsExpandProvider>()
                    .changeCountry(value);
              });
        }));
  }

  /// Section Widget
  Widget _buildResidentialAddressEditText(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 38.h, right: 39.h),
        child: Selector<ProfileDetailsExpandProvider, TextEditingController?>(
            selector: (context, provider) =>
                provider.residentialAddressEditTextController,
            builder: (context, residentialAddressEditTextController, child) {
              return CustomTextFormField(
                  controller: residentialAddressEditTextController,
                  hintText: "msg_1_4_beckley_estate".tr,
                  hintStyle: theme.textTheme.bodyMedium!,
                  borderDecoration:
                      TextFormFieldStyleHelper.outlineOnPrimaryContainerTL20,
                  fillColor: appTheme.indigo5001);
            }));
  }

  /// Section Widget
  Widget _buildPermanentAddressEditText(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 38.h, right: 39.h),
        child: Selector<ProfileDetailsExpandProvider, TextEditingController?>(
            selector: (context, provider) =>
                provider.permanentAddressEditTextController,
            builder: (context, permanentAddressEditTextController, child) {
              return CustomTextFormField(
                  controller: permanentAddressEditTextController,
                  hintText: "msg_1_4_beckley_estate".tr,
                  hintStyle: theme.textTheme.bodyMedium!,
                  textInputAction: TextInputAction.done,
                  borderDecoration:
                      TextFormFieldStyleHelper.outlineOnPrimaryContainerTL20,
                  fillColor: appTheme.indigo5001);
            }));
  }

  /// Navigates to the parentOrGuidanceScreen when the action is triggered.
  onTapImgFamilySvgrepoCom(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.parentOrGuidanceScreen,
    );
  }

  /// Navigates to the documentsScreen when the action is triggered.
  onTapImgDocumentSvgrepoCom(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.documentsScreen,
    );
  }
}
