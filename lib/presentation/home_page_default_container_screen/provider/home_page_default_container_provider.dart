import 'package:flutter/material.dart';
import 'package:test/core/app_export.dart';
import 'package:test/presentation/home_page_default_container_screen/models/home_page_default_container_model.dart';

/// A provider class for the HomePageDefaultContainerScreen.
///
/// This provider manages the state of the HomePageDefaultContainerScreen, including the
/// current homePageDefaultContainerModelObj

// ignore_for_file: must_be_immutable
class HomePageDefaultContainerProvider extends ChangeNotifier {
  HomePageDefaultContainerModel homePageDefaultContainerModelObj =
      HomePageDefaultContainerModel();

  @override
  void dispose() {
    super.dispose();
  }
}
