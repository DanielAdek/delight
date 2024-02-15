import '../../../core/app_export.dart';

/// This class is used in the [userprofile_item_widget] screen.
class UserprofileItemModel {
  UserprofileItemModel({
    this.fullName,
    this.father,
    this.bookingId,
    this.bookingDate,
    this.id,
  }) {
    fullName = fullName ?? "Full Name";
    father = father ?? "Father";
    bookingId = bookingId ?? "ID: 453653657";
    bookingDate = bookingDate ?? "Jun 22, 2023, 10:08:27 AM";
    id = id ?? "";
  }

  String? fullName;

  String? father;

  String? bookingId;

  String? bookingDate;

  String? id;
}
