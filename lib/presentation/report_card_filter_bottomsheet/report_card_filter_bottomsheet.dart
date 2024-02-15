import 'models/report_card_filter_model.dart';
import 'package:flutter/material.dart';
import 'package:test/core/app_export.dart';
import 'package:test/widgets/custom_drop_down.dart';
import 'package:test/widgets/custom_elevated_button.dart';
import 'package:test/widgets/custom_text_form_field.dart';
import 'provider/report_card_filter_provider.dart';

// ignore_for_file: must_be_immutable
class ReportCardFilterBottomsheet extends StatefulWidget {
  const ReportCardFilterBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  ReportCardFilterBottomsheetState createState() =>
      ReportCardFilterBottomsheetState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ReportCardFilterProvider(),
      child: ReportCardFilterBottomsheet(),
    );
  }
}

class ReportCardFilterBottomsheetState
    extends State<ReportCardFilterBottomsheet> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 17.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL30,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Selector<ReportCardFilterProvider, TextEditingController?>(
            selector: (
              context,
              provider,
            ) =>
                provider.filterReportCardController,
            builder: (context, filterReportCardController, child) {
              return CustomTextFormField(
                controller: filterReportCardController,
                hintText: "msg_filter_report_card".tr,
                textInputAction: TextInputAction.done,
                suffix: Container(
                  margin: EdgeInsets.fromLTRB(30.h, 8.v, 16.h, 8.v),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgCloseIcon,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                  ),
                ),
                suffixConstraints: BoxConstraints(
                  maxHeight: 40.v,
                ),
                contentPadding: EdgeInsets.only(
                  left: 30.h,
                  top: 8.v,
                  bottom: 8.v,
                ),
              );
            },
          ),
          SizedBox(height: 21.v),
          Selector<ReportCardFilterProvider, ReportCardFilterModel?>(
            selector: (
              context,
              provider,
            ) =>
                provider.reportCardFilterModelObj,
            builder: (context, reportCardFilterModelObj, child) {
              return CustomDropDown(
                icon: Container(
                  margin: EdgeInsets.fromLTRB(30.h, 17.v, 17.h, 17.v),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgChevronleftBlueGray4001,
                    height: 18.adaptSize,
                    width: 18.adaptSize,
                  ),
                ),
                hintText: "msg_select_academic".tr,
                hintStyle: CustomTextStyles.bodyMediumGray700,
                items: reportCardFilterModelObj?.dropdownItemList ?? [],
                contentPadding: EdgeInsets.only(
                  left: 30.h,
                  top: 15.v,
                  bottom: 15.v,
                ),
                onChanged: (value) {
                  context.read<ReportCardFilterProvider>().onSelected(value);
                },
              );
            },
          ),
          SizedBox(height: 10.v),
          Selector<ReportCardFilterProvider, ReportCardFilterModel?>(
            selector: (
              context,
              provider,
            ) =>
                provider.reportCardFilterModelObj,
            builder: (context, reportCardFilterModelObj, child) {
              return CustomDropDown(
                icon: Container(
                  margin: EdgeInsets.fromLTRB(30.h, 17.v, 19.h, 17.v),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgChevronleftBlueGray4001,
                    height: 18.adaptSize,
                    width: 18.adaptSize,
                  ),
                ),
                hintText: "lbl_select_term".tr,
                hintStyle: CustomTextStyles.bodyMediumGray700,
                items: reportCardFilterModelObj?.dropdownItemList1 ?? [],
                contentPadding: EdgeInsets.only(
                  left: 30.h,
                  top: 15.v,
                  bottom: 15.v,
                ),
                onChanged: (value) {
                  context.read<ReportCardFilterProvider>().onSelected1(value);
                },
              );
            },
          ),
          SizedBox(height: 10.v),
          Selector<ReportCardFilterProvider, ReportCardFilterModel?>(
            selector: (
              context,
              provider,
            ) =>
                provider.reportCardFilterModelObj,
            builder: (context, reportCardFilterModelObj, child) {
              return CustomDropDown(
                icon: Container(
                  margin: EdgeInsets.fromLTRB(30.h, 17.v, 17.h, 17.v),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgChevronleftBlueGray4001,
                    height: 18.adaptSize,
                    width: 18.adaptSize,
                  ),
                ),
                hintText: "lbl_select_class".tr,
                hintStyle: CustomTextStyles.bodyMediumGray700,
                items: reportCardFilterModelObj?.dropdownItemList2 ?? [],
                contentPadding: EdgeInsets.only(
                  left: 30.h,
                  top: 15.v,
                  bottom: 15.v,
                ),
                onChanged: (value) {
                  context.read<ReportCardFilterProvider>().onSelected2(value);
                },
              );
            },
          ),
          SizedBox(height: 10.v),
          CustomElevatedButton(
            text: "lbl_apply_filter".tr,
            buttonStyle: CustomButtonStyles.fillPrimaryTL3,
            buttonTextStyle: CustomTextStyles.bodyMediumWhiteA700_1,
          ),
        ],
      ),
    );
  }
}
