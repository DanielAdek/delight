import '../../../core/app_export.dart';

/// This class is used in the [userprofile1_item_widget] screen.
class Userprofile1ItemModel {
  Userprofile1ItemModel({
    this.filenameText,
    this.fileTypeText,
    this.dateText,
    this.id,
  }) {
    filenameText = filenameText ?? "Filename";
    fileTypeText = fileTypeText ?? "{Get_File_Type)";
    dateText = dateText ?? "Jun 22, 2023, 10:08:27 AM";
    id = id ?? "";
  }

  String? filenameText;

  String? fileTypeText;

  String? dateText;

  String? id;
}
