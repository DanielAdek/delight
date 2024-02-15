import 'package:flutter/material.dart';
import 'package:test/core/app_export.dart';
import 'package:test/presentation/parent_or_guidance_details_screen/models/parent_or_guidance_details_model.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/utils/utils.dart';

/// A provider class for the ParentOrGuidanceDetailsScreen.
///
/// This provider manages the state of the ParentOrGuidanceDetailsScreen, including the
/// current parentOrGuidanceDetailsModelObj

// ignore_for_file: must_be_immutable
class ParentOrGuidanceDetailsProvider extends ChangeNotifier {
  TextEditingController firstNameSectionController = TextEditingController();

  TextEditingController middleNameSectionController = TextEditingController();

  TextEditingController lastNameSectionController = TextEditingController();

  TextEditingController emailAddressSectionController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController countrySectionController = TextEditingController();

  TextEditingController addressSectionController = TextEditingController();

  TextEditingController relationshipValueSectionController =
      TextEditingController();

  TextEditingController createdAtSectionController = TextEditingController();

  ParentOrGuidanceDetailsModel parentOrGuidanceDetailsModelObj =
      ParentOrGuidanceDetailsModel();

  Country? selectedCountry;

  @override
  void dispose() {
    super.dispose();
    firstNameSectionController.dispose();
    middleNameSectionController.dispose();
    lastNameSectionController.dispose();
    emailAddressSectionController.dispose();
    phoneNumberController.dispose();
    countrySectionController.dispose();
    addressSectionController.dispose();
    relationshipValueSectionController.dispose();
    createdAtSectionController.dispose();
  }

  void changeCountry(Country value) {
    selectedCountry = value;
    notifyListeners();
  }
}
