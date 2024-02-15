import '../home_page_default_page/widgets/dashboard_item_widget.dart';
import 'models/dashboard_item_model.dart';
import 'models/home_page_default_model.dart';
import 'package:flutter/material.dart';
import 'package:test/core/app_export.dart';
import 'package:test/widgets/custom_icon_button.dart';
import 'provider/home_page_default_provider.dart';

class HomePageDefaultPage extends StatefulWidget {
  const HomePageDefaultPage({Key? key}) : super(key: key);

  @override
  HomePageDefaultPageState createState() => HomePageDefaultPageState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => HomePageDefaultProvider(),
        child: HomePageDefaultPage());
  }
}

class HomePageDefaultPageState extends State<HomePageDefaultPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.fillWhiteA,
                child: Column(children: [
                  _buildHomeScreen(context),
                  SizedBox(height: 17.v),
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: 6.h),
                      padding:
                          EdgeInsets.symmetric(horizontal: 7.h, vertical: 10.v),
                      decoration: AppDecoration.outlineIndigo50011.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder12),
                      child: _buildDashboard(context)),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  Widget _buildHomeScreen(BuildContext context) {
    return SizedBox(
        height: 291.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.only(bottom: 123.v),
                  padding:
                      EdgeInsets.symmetric(horizontal: 23.h, vertical: 10.v),
                  decoration: AppDecoration.fillPrimary,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(bottom: 38.v),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("lbl_hi_yash".tr,
                                      style: CustomTextStyles
                                          .headlineLargeWhiteA700),
                                  SizedBox(height: 3.v),
                                  Row(children: [
                                    Opacity(
                                        opacity: 0.61,
                                        child: Padding(
                                            padding: EdgeInsets.only(top: 1.v),
                                            child: Text("msg_class_jss_3b".tr,
                                                style: CustomTextStyles
                                                    .bodyLargeWhiteA700))),
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgCopySvgrepoCom,
                                        height: 29.adaptSize,
                                        width: 29.adaptSize)
                                  ]),
                                  SizedBox(height: 7.v),
                                  Row(children: [
                                    SizedBox(
                                        height: 24.v,
                                        width: 91.h,
                                        child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgTelevision,
                                                  height: 24.v,
                                                  width: 91.h,
                                                  alignment: Alignment.center),
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Text(
                                                      "lbl_2020_2021".tr,
                                                      style: CustomTextStyles
                                                          .bodyMediumPrimary))
                                            ])),
                                    Container(
                                        width: 111.h,
                                        margin: EdgeInsets.only(left: 6.h),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 8.h, vertical: 1.v),
                                        decoration: AppDecoration.fillWhiteA
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .circleBorder12),
                                        child: Text("lbl_second_term".tr,
                                            style: CustomTextStyles
                                                .bodyMediumPrimary))
                                  ])
                                ])),
                        CustomImageView(
                            imagePath: ImageConstant.imgImage1,
                            height: 60.adaptSize,
                            width: 60.adaptSize,
                            radius: BorderRadius.circular(30.h),
                            margin: EdgeInsets.only(top: 26.v, bottom: 61.v),
                            onTap: () {
                              onTapImgImageOne(context);
                            })
                      ]))),
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  margin: EdgeInsets.only(left: 6.h, top: 143.v, right: 6.h),
                  padding:
                      EdgeInsets.symmetric(horizontal: 7.h, vertical: 12.v),
                  decoration: AppDecoration.outlineIndigo
                      .copyWith(borderRadius: BorderRadiusStyle.circleBorder12),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _buildFrame(context,
                            count: "lbl_0".tr, title: "lbl_notifications".tr),
                        Padding(
                            padding: EdgeInsets.only(left: 6.h),
                            child: _buildFrame(context,
                                count: "lbl_5".tr, title: "lbl_events".tr)),
                        Container(
                            margin: EdgeInsets.only(left: 6.h),
                            padding: EdgeInsets.symmetric(
                                horizontal: 5.h, vertical: 1.v),
                            decoration: AppDecoration.outlineIndigo5001
                                .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.circleBorder12),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(height: 3.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 3.h),
                                      child: CustomIconButton(
                                          height: 40.adaptSize,
                                          width: 40.adaptSize,
                                          padding: EdgeInsets.all(8.h),
                                          child: CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgLockPrimary))),
                                  SizedBox(height: 3.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 3.h),
                                      child: Text("lbl_0".tr,
                                          style:
                                              theme.textTheme.headlineLarge)),
                                  SizedBox(height: 2.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 3.h),
                                      child: Row(children: [
                                        Text("lbl_attendance".tr,
                                            style: theme.textTheme.bodyLarge),
                                        CustomImageView(
                                            imagePath: ImageConstant.imgSearch,
                                            height: 17.adaptSize,
                                            width: 17.adaptSize,
                                            margin: EdgeInsets.only(
                                                left: 3.h,
                                                top: 3.v,
                                                bottom: 4.v))
                                      ]))
                                ]))
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildDashboard(BuildContext context) {
    return Consumer<HomePageDefaultProvider>(
        builder: (context, provider, child) {
      return GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 106.v,
              crossAxisCount: 3,
              mainAxisSpacing: 13.h,
              crossAxisSpacing: 13.h),
          physics: NeverScrollableScrollPhysics(),
          itemCount: provider.homePageDefaultModelObj.dashboardItemList.length,
          itemBuilder: (context, index) {
            DashboardItemModel model =
                provider.homePageDefaultModelObj.dashboardItemList[index];
            return DashboardItemWidget(model, onTapFrame: () {
              onTapFrame(context);
            });
          });
    });
  }

  /// Common widget
  Widget _buildFrame(
    BuildContext context, {
    required String count,
    required String title,
  }) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 9.h, vertical: 1.v),
        decoration: AppDecoration.outlineIndigo5001
            .copyWith(borderRadius: BorderRadiusStyle.circleBorder12),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 1.v),
              CustomIconButton(
                  height: 40.adaptSize,
                  width: 40.adaptSize,
                  padding: EdgeInsets.all(9.h),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgEventsSvgrepoCom)),
              SizedBox(height: 3.v),
              Text(count,
                  style: theme.textTheme.headlineLarge!
                      .copyWith(color: appTheme.blueGray900)),
              SizedBox(height: 2.v),
              Text(title,
                  style: theme.textTheme.bodyLarge!
                      .copyWith(color: appTheme.gray700))
            ]));
  }

  /// Navigates to the profileDetailsScreen when the action is triggered.
  onTapFrame(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.profileDetailsScreen);
  }

  /// Navigates to the updateProfileScreen when the action is triggered.
  onTapImgImageOne(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.updateProfileScreen,
    );
  }
}
