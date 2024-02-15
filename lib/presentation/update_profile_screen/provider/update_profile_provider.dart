import 'package:flutter/material.dart';
import 'package:test/core/app_export.dart';
import 'package:test/presentation/update_profile_screen/models/update_profile_model.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/utils/utils.dart';

/// A provider class for the UpdateProfileScreen.
///
/// This provider manages the state of the UpdateProfileScreen, including the
/// current updateProfileModelObj
class UpdateProfileProvider extends ChangeNotifier {
  TextEditingController firstNameController = TextEditingController();

  TextEditingController lastNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController streetAddressController = TextEditingController();

  TextEditingController jssCounterController = TextEditingController();

  TextEditingController termValueController = TextEditingController();

  TextEditingController priceController = TextEditingController();

  UpdateProfileModel updateProfileModelObj = UpdateProfileModel();

  Country? selectedCountry;

  @override
  void dispose() {
    super.dispose();
    firstNameController.dispose();
    lastNameController.dispose();
    emailController.dispose();
    phoneNumberController.dispose();
    streetAddressController.dispose();
    jssCounterController.dispose();
    termValueController.dispose();
    priceController.dispose();
  }

  onSelected(dynamic value) {
    for (var element in updateProfileModelObj.dropdownItemList) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }

  onSelected1(dynamic value) {
    for (var element in updateProfileModelObj.dropdownItemList1) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }

  onSelected2(dynamic value) {
    for (var element in updateProfileModelObj.dropdownItemList2) {
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
