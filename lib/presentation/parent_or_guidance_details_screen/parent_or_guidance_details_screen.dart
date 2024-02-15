import 'models/parent_or_guidance_details_model.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/material.dart';
import 'package:test/core/app_export.dart';
import 'package:test/core/utils/validation_functions.dart';
import 'package:test/widgets/custom_phone_number.dart';
import 'package:test/widgets/custom_text_form_field.dart';
import 'provider/parent_or_guidance_details_provider.dart';

class ParentOrGuidanceDetailsScreen extends StatefulWidget {
  const ParentOrGuidanceDetailsScreen({Key? key}) : super(key: key);

  @override
  ParentOrGuidanceDetailsScreenState createState() =>
      ParentOrGuidanceDetailsScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ParentOrGuidanceDetailsProvider(),
        child: ParentOrGuidanceDetailsScreen());
  }
}

// ignore_for_file: must_be_immutable
class ParentOrGuidanceDetailsScreenState
    extends State<ParentOrGuidanceDetailsScreen> {
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
                    child: SingleChildScrollView(
                        child: Column(children: [
                      _buildStackSection(context),
                      _buildStudentInfoTopSection(context),
                      SizedBox(height: 15.v),
                      Container(
                          height: 160.adaptSize,
                          width: 160.adaptSize,
                          padding: EdgeInsets.all(5.h),
                          decoration: AppDecoration.fillIndigo.copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder80),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgFrame639,
                              height: 150.adaptSize,
                              width: 150.adaptSize,
                              radius: BorderRadius.circular(75.h),
                              alignment: Alignment.center)),
                      SizedBox(height: 14.v),
                      Text("lbl_parent_name".tr,
                          style: theme.textTheme.labelLarge),
                      SizedBox(height: 13.v),
                      Text("lbl_id_1223203043".tr,
                          style: theme.textTheme.labelLarge),
                      SizedBox(height: 41.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 39.h),
                              child: Text("lbl_first_name".tr,
                                  style: theme.textTheme.bodyMedium))),
                      SizedBox(height: 5.v),
                      _buildFirstNameSection(context),
                      SizedBox(height: 15.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 39.h),
                              child: Text("lbl_middle_name".tr,
                                  style: theme.textTheme.bodyMedium))),
                      SizedBox(height: 5.v),
                      _buildMiddleNameSection(context),
                      SizedBox(height: 15.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 39.h),
                              child: Text("lbl_last_name".tr,
                                  style: theme.textTheme.bodyMedium))),
                      SizedBox(height: 5.v),
                      _buildLastNameSection(context),
                      SizedBox(height: 15.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 39.h),
                              child: Text("lbl_email_address".tr,
                                  style: theme.textTheme.bodyMedium))),
                      SizedBox(height: 5.v),
                      _buildEmailAddressSection(context),
                      SizedBox(height: 15.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 39.h),
                              child: Text("lbl_phone_number".tr,
                                  style: theme.textTheme.bodyMedium))),
                      SizedBox(height: 5.v),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 38.h),
                          child: _buildPhoneNumber(context)),
                      SizedBox(height: 17.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 39.h),
                              child: Text("lbl_country".tr,
                                  style: theme.textTheme.bodyMedium))),
                      SizedBox(height: 3.v),
                      _buildCountrySection(context),
                      SizedBox(height: 16.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 39.h),
                              child: Text("lbl_address".tr,
                                  style: theme.textTheme.bodyMedium))),
                      SizedBox(height: 5.v),
                      _buildAddressSection(context),
                      SizedBox(height: 16.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 39.h),
                              child: Text("lbl_relationship".tr,
                                  style: theme.textTheme.bodyMedium))),
                      SizedBox(height: 5.v),
                      _buildRelationshipValueSection(context),
                      SizedBox(height: 16.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 39.h),
                              child: Text("lbl_created_at".tr,
                                  style: theme.textTheme.bodyMedium))),
                      SizedBox(height: 5.v),
                      _buildCreatedAtSection(context)
                    ]))))));
  }

  /// Section Widget
  Widget _buildStackSection(BuildContext context) {
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
          Align(
              alignment: Alignment.center,
              child: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 22.h, vertical: 10.v),
                  decoration: AppDecoration.fillPrimary,
                  child: Row(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgChevronLeft,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        margin: EdgeInsets.only(bottom: 1.v)),
                    Padding(
                        padding: EdgeInsets.only(left: 14.h, bottom: 3.v),
                        child: Text("msg_student_information".tr,
                            style: theme.textTheme.titleSmall))
                  ])))
        ]));
  }

  /// Section Widget
  Widget _buildStudentInfoTopSection(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 17.h, vertical: 8.v),
        decoration: AppDecoration.outlineBlack,
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                  padding: EdgeInsets.only(right: 1.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant
                                .imgStudentPerson4SvgrepoComOnprimarycontainer,
                            height: 23.adaptSize,
                            width: 23.adaptSize,
                            margin: EdgeInsets.only(bottom: 10.v),
                            onTap: () {
                              onTapImgImage(context);
                            }),
                        Container(
                            height: 33.v,
                            width: 95.h,
                            padding: EdgeInsets.symmetric(
                                horizontal: 36.h, vertical: 5.v),
                            decoration: AppDecoration.fillPrimary.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder16),
                            child: CustomImageView(
                                imagePath:
                                    ImageConstant.imgFamilySvgrepoComWhiteA700,
                                height: 23.adaptSize,
                                width: 23.adaptSize,
                                alignment: Alignment.center)),
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
                  padding: EdgeInsets.only(left: 73.h),
                  child: Text("lbl_parent_guardian".tr,
                      style: theme.textTheme.bodySmall)),
              SizedBox(height: 1.v)
            ]));
  }

  /// Section Widget
  Widget _buildFirstNameSection(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 39.h, right: 38.h),
        child:
            Selector<ParentOrGuidanceDetailsProvider, TextEditingController?>(
                selector: (context, provider) =>
                    provider.firstNameSectionController,
                builder: (context, firstNameSectionController, child) {
                  return CustomTextFormField(
                      controller: firstNameSectionController,
                      hintText: "lbl_philip".tr,
                      hintStyle: theme.textTheme.bodyMedium!,
                      borderDecoration: TextFormFieldStyleHelper
                          .outlineOnPrimaryContainerTL20,
                      fillColor: appTheme.indigo5001);
                }));
  }

  /// Section Widget
  Widget _buildMiddleNameSection(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 39.h, right: 38.h),
        child:
            Selector<ParentOrGuidanceDetailsProvider, TextEditingController?>(
                selector: (context, provider) =>
                    provider.middleNameSectionController,
                builder: (context, middleNameSectionController, child) {
                  return CustomTextFormField(
                      controller: middleNameSectionController,
                      hintText: "lbl_philip".tr,
                      hintStyle: theme.textTheme.bodyMedium!,
                      borderDecoration: TextFormFieldStyleHelper
                          .outlineOnPrimaryContainerTL20,
                      fillColor: appTheme.indigo5001);
                }));
  }

  /// Section Widget
  Widget _buildLastNameSection(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 39.h, right: 38.h),
        child: Selector<ParentOrGuidanceDetailsProvider,
                TextEditingController?>(
            selector: (context, provider) => provider.lastNameSectionController,
            builder: (context, lastNameSectionController, child) {
              return CustomTextFormField(
                  controller: lastNameSectionController,
                  hintText: "lbl_james".tr,
                  hintStyle: theme.textTheme.bodyMedium!,
                  borderDecoration:
                      TextFormFieldStyleHelper.outlineOnPrimaryContainerTL20,
                  fillColor: appTheme.indigo5001);
            }));
  }

  /// Section Widget
  Widget _buildEmailAddressSection(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 39.h, right: 38.h),
        child:
            Selector<ParentOrGuidanceDetailsProvider, TextEditingController?>(
                selector: (context, provider) =>
                    provider.emailAddressSectionController,
                builder: (context, emailAddressSectionController, child) {
                  return CustomTextFormField(
                      controller: emailAddressSectionController,
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
                      borderDecoration: TextFormFieldStyleHelper
                          .outlineOnPrimaryContainerTL20,
                      fillColor: appTheme.indigo5001);
                }));
  }

  /// Section Widget
  Widget _buildPhoneNumber(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 38.h),
        child: Consumer<ParentOrGuidanceDetailsProvider>(
            builder: (context, provider, child) {
          return CustomPhoneNumber(
              country: provider.selectedCountry ??
                  CountryPickerUtils.getCountryByPhoneCode('1'),
              controller: provider.phoneNumberController,
              onTap: (Country value) {
                context
                    .read<ParentOrGuidanceDetailsProvider>()
                    .changeCountry(value);
              });
        }));
  }

  /// Section Widget
  Widget _buildCountrySection(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 39.h, right: 38.h),
        child: Selector<ParentOrGuidanceDetailsProvider,
                TextEditingController?>(
            selector: (context, provider) => provider.countrySectionController,
            builder: (context, countrySectionController, child) {
              return CustomTextFormField(
                  controller: countrySectionController,
                  hintText: "lbl_nigeria".tr,
                  hintStyle: theme.textTheme.bodyMedium!,
                  borderDecoration:
                      TextFormFieldStyleHelper.outlineOnPrimaryContainerTL20,
                  fillColor: appTheme.indigo5001);
            }));
  }

  /// Section Widget
  Widget _buildAddressSection(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 39.h, right: 38.h),
        child: Selector<ParentOrGuidanceDetailsProvider,
                TextEditingController?>(
            selector: (context, provider) => provider.addressSectionController,
            builder: (context, addressSectionController, child) {
              return CustomTextFormField(
                  controller: addressSectionController,
                  hintText: "msg_1_4_beckley_estate".tr,
                  hintStyle: theme.textTheme.bodyMedium!,
                  borderDecoration:
                      TextFormFieldStyleHelper.outlineOnPrimaryContainerTL20,
                  fillColor: appTheme.indigo5001);
            }));
  }

  /// Section Widget
  Widget _buildRelationshipValueSection(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 39.h, right: 38.h),
        child:
            Selector<ParentOrGuidanceDetailsProvider, TextEditingController?>(
                selector: (context, provider) =>
                    provider.relationshipValueSectionController,
                builder: (context, relationshipValueSectionController, child) {
                  return CustomTextFormField(
                      controller: relationshipValueSectionController,
                      hintText: "lbl_father".tr,
                      hintStyle: theme.textTheme.bodyMedium!,
                      borderDecoration: TextFormFieldStyleHelper
                          .outlineOnPrimaryContainerTL20,
                      fillColor: appTheme.indigo5001);
                }));
  }

  /// Section Widget
  Widget _buildCreatedAtSection(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 39.h, right: 38.h),
        child:
            Selector<ParentOrGuidanceDetailsProvider, TextEditingController?>(
                selector: (context, provider) =>
                    provider.createdAtSectionController,
                builder: (context, createdAtSectionController, child) {
                  return CustomTextFormField(
                      controller: createdAtSectionController,
                      hintText: "msg_jun_22_2023_10_08_27".tr,
                      hintStyle: theme.textTheme.bodyMedium!,
                      textInputAction: TextInputAction.done,
                      borderDecoration: TextFormFieldStyleHelper
                          .outlineOnPrimaryContainerTL20,
                      fillColor: appTheme.indigo5001);
                }));
  }

  /// Navigates to the profileDetailsScreen when the action is triggered.
  onTapImgImage(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.profileDetailsScreen,
    );
  }

  /// Navigates to the documentsScreen when the action is triggered.
  onTapImgDocumentSvgrepoCom(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.documentsScreen,
    );
  }
}
