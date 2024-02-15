import 'package:flutter/material.dart';
import 'package:test/core/app_export.dart';
import 'package:test/presentation/profile_details_expand_screen/models/profile_details_expand_model.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/utils/utils.dart';

/// A provider class for the ProfileDetailsExpandScreen.
///
/// This provider manages the state of the ProfileDetailsExpandScreen, including the
/// current profileDetailsExpandModelObj

// ignore_for_file: must_be_immutable
class ProfileDetailsExpandProvider extends ChangeNotifier {
  TextEditingController firstNameEditTextController = TextEditingController();

  TextEditingController middleNameEditTextController = TextEditingController();

  TextEditingController lastNameEditTextController = TextEditingController();

  TextEditingController genderValueEditTextController = TextEditingController();

  TextEditingController dateOfBirthEditTextController = TextEditingController();

  TextEditingController emailEditTextController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController residentialAddressEditTextController =
      TextEditingController();

  TextEditingController permanentAddressEditTextController =
      TextEditingController();

  ProfileDetailsExpandModel profileDetailsExpandModelObj =
      ProfileDetailsExpandModel();

  Country? selectedCountry;

  @override
  void dispose() {
    super.dispose();
    firstNameEditTextController.dispose();
    middleNameEditTextController.dispose();
    lastNameEditTextController.dispose();
    genderValueEditTextController.dispose();
    dateOfBirthEditTextController.dispose();
    emailEditTextController.dispose();
    phoneNumberController.dispose();
    residentialAddressEditTextController.dispose();
    permanentAddressEditTextController.dispose();
  }

  onSelected(dynamic value) {
    for (var element in profileDetailsExpandModelObj.dropdownItemList) {
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
