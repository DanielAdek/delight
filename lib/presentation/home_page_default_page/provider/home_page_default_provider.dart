import 'package:flutter/material.dart';
import 'package:test/core/app_export.dart';
import 'package:test/presentation/home_page_default_page/models/home_page_default_model.dart';
import '../models/dashboard_item_model.dart';

/// A provider class for the HomePageDefaultPage.
///
/// This provider manages the state of the HomePageDefaultPage, including the
/// current homePageDefaultModelObj

// ignore_for_file: must_be_immutable
class HomePageDefaultProvider extends ChangeNotifier {
  HomePageDefaultModel homePageDefaultModelObj = HomePageDefaultModel();

  @override
  void dispose() {
    super.dispose();
  }
}
