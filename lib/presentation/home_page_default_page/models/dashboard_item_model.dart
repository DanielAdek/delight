import '../../../core/app_export.dart';

/// This class is used in the [dashboard_item_widget] screen.
class DashboardItemModel {
  DashboardItemModel({
    this.hostelImage,
    this.assignmentText,
    this.id,
  }) {
    hostelImage = hostelImage ?? ImageConstant.imgBed;
    assignmentText = assignmentText ?? "Hostel";
    id = id ?? "";
  }

  String? hostelImage;

  String? assignmentText;

  String? id;
}
