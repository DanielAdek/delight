import 'package:flutter/material.dart';
import 'package:test/core/app_export.dart';
import 'package:test/presentation/parent_or_guidance_screen/models/parent_or_guidance_model.dart';
import '../models/userprofile_item_model.dart';

/// A provider class for the ParentOrGuidanceScreen.
///
/// This provider manages the state of the ParentOrGuidanceScreen, including the
/// current parentOrGuidanceModelObj

// ignore_for_file: must_be_immutable
class ParentOrGuidanceProvider extends ChangeNotifier {
  ParentOrGuidanceModel parentOrGuidanceModelObj = ParentOrGuidanceModel();

  @override
  void dispose() {
    super.dispose();
  }
}
