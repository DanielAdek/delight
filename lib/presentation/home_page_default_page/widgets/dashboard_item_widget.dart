import '../models/dashboard_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:test/core/app_export.dart';

// ignore: must_be_immutable
class DashboardItemWidget extends StatelessWidget {
  DashboardItemWidget(
    this.dashboardItemModelObj, {
    Key? key,
    this.onTapFrame,
  }) : super(
          key: key,
        );

  DashboardItemModel dashboardItemModelObj;

  VoidCallback? onTapFrame;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapFrame!.call();
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 9.h,
          vertical: 17.v,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: fs.Svg(
              ImageConstant.imgFrame1000011746,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              imagePath: dashboardItemModelObj?.hostelImage,
              height: 40.adaptSize,
              width: 40.adaptSize,
            ),
            SizedBox(height: 8.v),
            Text(
              dashboardItemModelObj.assignmentText!,
              style: theme.textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}
