import 'models/app_navigation_model.dart';
import 'package:flutter/material.dart';
import 'package:test/core/app_export.dart';
import 'provider/app_navigation_provider.dart';

class AppNavigationScreen extends StatefulWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  AppNavigationScreenState createState() => AppNavigationScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppNavigationProvider(),
      child: AppNavigationScreen(),
    );
  }
}

class AppNavigationScreenState extends State<AppNavigationScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "Splash screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.splashScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Login page".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.loginPageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Forgot password".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.forgotPasswordScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Login page without input value Two".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.loginPageWithoutInputValueTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home Page - Default - Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.homePageDefaultContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Update profile".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.updateProfileScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Profile Details".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.profileDetailsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Profile Details - expand".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.profileDetailsExpandScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Parent or Guidance".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.parentOrGuidanceScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Parent or Guidance Details".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.parentOrGuidanceDetailsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Documents".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.documentsScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    NavigatorService.pushNamed(routeName);
  }
}
