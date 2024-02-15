import '../models/userprofile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:test/core/app_export.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget(
    this.userprofileItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofileItemModel userprofileItemModelObj;

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
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 1.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 126.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgFrame63950x50,
                        height: 50.adaptSize,
                        width: 50.adaptSize,
                        radius: BorderRadius.circular(
                          25.h,
                        ),
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
                              userprofileItemModelObj.fullName!,
                              style: CustomTextStyles.titleSmallBluegray900,
                            ),
                            Text(
                              userprofileItemModelObj.father!,
                              style: CustomTextStyles.labelLargeGray700,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgChevronLeftBlueGray400,
                  height: 18.adaptSize,
                  width: 18.adaptSize,
                  margin: EdgeInsets.symmetric(vertical: 16.v),
                ),
              ],
            ),
          ),
          SizedBox(height: 17.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    userprofileItemModelObj.bookingId!,
                    style: CustomTextStyles.labelLargeGray90001,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgMinimize,
                    height: 11.v,
                    width: 10.h,
                    margin: EdgeInsets.only(
                      left: 8.h,
                      top: 3.v,
                      bottom: 3.v,
                    ),
                  ),
                ],
              ),
              Text(
                userprofileItemModelObj.bookingDate!,
                style: CustomTextStyles.labelLargeOnPrimaryContainer,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
