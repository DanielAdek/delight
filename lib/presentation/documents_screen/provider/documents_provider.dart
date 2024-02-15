import 'package:flutter/material.dart';
import 'package:test/core/app_export.dart';
import 'package:test/presentation/documents_screen/models/documents_model.dart';
import '../models/userprofile1_item_model.dart';

/// A provider class for the DocumentsScreen.
///
/// This provider manages the state of the DocumentsScreen, including the
/// current documentsModelObj

// ignore_for_file: must_be_immutable
class DocumentsProvider extends ChangeNotifier {
  DocumentsModel documentsModelObj = DocumentsModel();

  @override
  void dispose() {
    super.dispose();
  }
}
