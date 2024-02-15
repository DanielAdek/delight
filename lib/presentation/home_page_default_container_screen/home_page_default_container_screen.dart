import 'models/home_page_default_container_model.dart';
import 'package:flutter/material.dart';
import 'package:test/core/app_export.dart';
import 'package:test/presentation/home_page_default_page/home_page_default_page.dart';
import 'package:test/widgets/custom_bottom_bar.dart';
import 'provider/home_page_default_container_provider.dart';

class HomePageDefaultContainerScreen extends StatefulWidget {
  const HomePageDefaultContainerScreen({Key? key}) : super(key: key);

  @override
  HomePageDefaultContainerScreenState createState() =>
      HomePageDefaultContainerScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => HomePageDefaultContainerProvider(),
        child: HomePageDefaultContainerScreen());
  }
}

// ignore_for_file: must_be_immutable
class HomePageDefaultContainerScreenState
    extends State<HomePageDefaultContainerScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.homePageDefaultPage,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                    pageBuilder: (ctx, ani, ani1) =>
                        getCurrentPage(context, routeSetting.name!),
                    transitionDuration: Duration(seconds: 0))),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homePageDefaultPage;
      case BottomBarEnum.Reports:
        return "/";
      case BottomBarEnum.Library:
        return "/";
      case BottomBarEnum.Settings:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.homePageDefaultPage:
        return HomePageDefaultPage.builder(context);
      default:
        return DefaultWidget();
    }
  }
}
