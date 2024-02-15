import 'package:flutter/material.dart';
import 'package:test/core/app_export.dart';
import 'package:test/presentation/profile_details_screen/models/profile_details_model.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/utils/utils.dart';

/// A provider class for the ProfileDetailsScreen.
///
/// This provider manages the state of the ProfileDetailsScreen, including the
/// current profileDetailsModelObj

// ignore_for_file: must_be_immutable
class ProfileDetailsProvider extends ChangeNotifier {
  TextEditingController firstNameSectionController = TextEditingController();

  TextEditingController middleNameSectionController = TextEditingController();

  TextEditingController lastNameSectionController = TextEditingController();

  TextEditingController genderValueSectionController = TextEditingController();

  TextEditingController dateOfBirthSectionController = TextEditingController();

  TextEditingController emailSectionController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController residentialAddressSectionController =
      TextEditingController();

  TextEditingController permanentAddressSectionController =
      TextEditingController();

  ProfileDetailsModel profileDetailsModelObj = ProfileDetailsModel();

  Country? selectedCountry;

  @override
  void dispose() {
    super.dispose();
    firstNameSectionController.dispose();
    middleNameSectionController.dispose();
    lastNameSectionController.dispose();
    genderValueSectionController.dispose();
    dateOfBirthSectionController.dispose();
    emailSectionController.dispose();
    phoneNumberController.dispose();
    residentialAddressSectionController.dispose();
    permanentAddressSectionController.dispose();
  }

  onSelected(dynamic value) {
    for (var element in profileDetailsModelObj.dropdownItemList) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }

  void changeCountry(Country value) {
    selectedCountry = value;
    notifyListeners();
  }
}
