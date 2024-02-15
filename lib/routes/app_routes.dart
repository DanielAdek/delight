import 'package:flutter/material.dart';
import 'package:test/presentation/splash_screen/splash_screen.dart';
import 'package:test/presentation/login_page_screen/login_page_screen.dart';
import 'package:test/presentation/forgot_password_screen/forgot_password_screen.dart';
import 'package:test/presentation/login_page_without_input_value_two_screen/login_page_without_input_value_two_screen.dart';
import 'package:test/presentation/home_page_default_container_screen/home_page_default_container_screen.dart';
import 'package:test/presentation/update_profile_screen/update_profile_screen.dart';
import 'package:test/presentation/profile_details_screen/profile_details_screen.dart';
import 'package:test/presentation/profile_details_expand_screen/profile_details_expand_screen.dart';
import 'package:test/presentation/parent_or_guidance_screen/parent_or_guidance_screen.dart';
import 'package:test/presentation/parent_or_guidance_details_screen/parent_or_guidance_details_screen.dart';
import 'package:test/presentation/documents_screen/documents_screen.dart';
import 'package:test/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String loginPageScreen = '/login_page_screen';

  static const String forgotPasswordScreen = '/forgot_password_screen';

  static const String loginPageWithoutInputValueTwoScreen =
      '/login_page_without_input_value_two_screen';

  static const String homePageDefaultPage = '/home_page_default_page';

  static const String homePageDefaultContainerScreen =
      '/home_page_default_container_screen';

  static const String updateProfileScreen = '/update_profile_screen';

  static const String profileDetailsScreen = '/profile_details_screen';

  static const String profileDetailsExpandScreen =
      '/profile_details_expand_screen';

  static const String parentOrGuidanceScreen = '/parent_or_guidance_screen';

  static const String parentOrGuidanceDetailsScreen =
      '/parent_or_guidance_details_screen';

  static const String documentsScreen = '/documents_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        splashScreen: SplashScreen.builder,
        loginPageScreen: LoginPageScreen.builder,
        forgotPasswordScreen: ForgotPasswordScreen.builder,
        loginPageWithoutInputValueTwoScreen:
            LoginPageWithoutInputValueTwoScreen.builder,
        homePageDefaultContainerScreen: HomePageDefaultContainerScreen.builder,
        updateProfileScreen: UpdateProfileScreen.builder,
        profileDetailsScreen: ProfileDetailsScreen.builder,
        profileDetailsExpandScreen: ProfileDetailsExpandScreen.builder,
        parentOrGuidanceScreen: ParentOrGuidanceScreen.builder,
        parentOrGuidanceDetailsScreen: ParentOrGuidanceDetailsScreen.builder,
        documentsScreen: DocumentsScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: SplashScreen.builder
      };
}
