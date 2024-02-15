import 'models/splash_model.dart';
import 'package:flutter/material.dart';
import 'package:test/core/app_export.dart';
import 'provider/splash_provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  SplashScreenState createState() => SplashScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => SplashProvider(), child: SplashScreen());
  }
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 3000), () {
      NavigatorService.popAndPushNamed(
        AppRoutes.loginPageScreen,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.primary,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 161.v),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Spacer(flex: 48),
                      CustomImageView(
                          imagePath: ImageConstant.imgLock,
                          height: 49.v,
                          width: 50.h),
                      SizedBox(height: 6.v),
                      Text("lbl_schoodelight".tr,
                          style: theme.textTheme.titleLarge),
                      Spacer(flex: 51),
                      SizedBox(
                          height: 44.adaptSize,
                          width: 44.adaptSize,
                          child: CircularProgressIndicator(value: 0.5))
                    ]))));
  }
}
