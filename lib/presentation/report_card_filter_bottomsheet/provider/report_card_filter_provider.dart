import 'package:flutter/material.dart';
import 'package:test/core/app_export.dart';
import 'package:test/presentation/report_card_filter_bottomsheet/models/report_card_filter_model.dart';

/// A provider class for the ReportCardFilterBottomsheet.
///
/// This provider manages the state of the ReportCardFilterBottomsheet, including the
/// current reportCardFilterModelObj
class ReportCardFilterProvider extends ChangeNotifier {
  TextEditingController filterReportCardController = TextEditingController();

  ReportCardFilterModel reportCardFilterModelObj = ReportCardFilterModel();

  @override
  void dispose() {
    super.dispose();
    filterReportCardController.dispose();
  }

  onSelected(dynamic value) {
    for (var element in reportCardFilterModelObj.dropdownItemList) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }

  onSelected1(dynamic value) {
    for (var element in reportCardFilterModelObj.dropdownItemList1) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }

  onSelected2(dynamic value) {
    for (var element in reportCardFilterModelObj.dropdownItemList2) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }
}
