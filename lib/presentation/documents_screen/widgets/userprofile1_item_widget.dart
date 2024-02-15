import '../models/userprofile1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:test/core/app_export.dart';

// ignore: must_be_immutable
class Userprofile1ItemWidget extends StatelessWidget {
  Userprofile1ItemWidget(
    this.userprofile1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile1ItemModel userprofile1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 21.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.outlineIndigo5001.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder12,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 155.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgZipBoxOutline,
                      height: 50.adaptSize,
                      width: 50.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 4.v,
                        bottom: 5.v,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            userprofile1ItemModelObj.filenameText!,
                            style: CustomTextStyles.titleSmallBluegray900,
                          ),
                          Text(
                            userprofile1ItemModelObj.fileTypeText!,
                            style: CustomTextStyles.labelLargeGray700,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 18.v),
              Text(
                userprofile1ItemModelObj.dateText!,
                style: CustomTextStyles.bodySmallBluegray900,
              ),
            ],
          ),
          CustomImageView(
            imagePath: ImageConstant.imgFolderDownloadOutline,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              top: 13.v,
              bottom: 49.v,
            ),
          ),
        ],
      ),
    );
  }
}
