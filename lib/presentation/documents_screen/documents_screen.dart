import '../documents_screen/widgets/userprofile1_item_widget.dart';
import 'models/documents_model.dart';
import 'models/userprofile1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:test/core/app_export.dart';
import 'provider/documents_provider.dart';

class DocumentsScreen extends StatefulWidget {
  const DocumentsScreen({Key? key}) : super(key: key);

  @override
  DocumentsScreenState createState() => DocumentsScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => DocumentsProvider(), child: DocumentsScreen());
  }
}

class DocumentsScreenState extends State<DocumentsScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildNinetyFour(context),
                  _buildStudentInfoTop(context),
                  SizedBox(height: 15.v),
                  _buildUserProfile(context)
                ]))));
  }

  /// Section Widget
  Widget _buildNinetyFour(BuildContext context) {
    return SizedBox(
        height: 45.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                  height: 12.v,
                  width: double.maxFinite,
                  decoration: BoxDecoration(color: theme.colorScheme.primary))),
          Align(
              alignment: Alignment.center,
              child: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 22.h, vertical: 10.v),
                  decoration: AppDecoration.fillPrimary,
                  child: Row(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgChevronLeft,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        margin: EdgeInsets.only(bottom: 1.v)),
                    Padding(
                        padding: EdgeInsets.only(left: 14.h, bottom: 3.v),
                        child: Text("msg_student_information".tr,
                            style: theme.textTheme.titleSmall))
                  ])))
        ]));
  }

  /// Section Widget
  Widget _buildStudentInfoTop(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 21.h, vertical: 8.v),
        decoration: AppDecoration.outlineBlack,
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                  padding: EdgeInsets.only(right: 1.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant
                                .imgStudentPerson4SvgrepoComOnprimarycontainer,
                            height: 23.adaptSize,
                            width: 23.adaptSize,
                            margin: EdgeInsets.only(bottom: 10.v),
                            onTap: () {
                              onTapImgImage(context);
                            }),
                        CustomImageView(
                            imagePath: ImageConstant
                                .imgFamilySvgrepoComOnprimarycontainer,
                            height: 23.adaptSize,
                            width: 23.adaptSize,
                            margin: EdgeInsets.only(bottom: 10.v),
                            onTap: () {
                              onTapImgFamilySvgrepoCom(context);
                            }),
                        CustomImageView(
                            imagePath: ImageConstant.imgFamilyAvatarsSvgrepoCom,
                            height: 23.adaptSize,
                            width: 23.adaptSize,
                            margin: EdgeInsets.only(bottom: 10.v)),
                        Container(
                            height: 33.v,
                            width: 95.h,
                            padding: EdgeInsets.symmetric(
                                horizontal: 36.h, vertical: 5.v),
                            decoration: AppDecoration.fillPrimary.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder16),
                            child: CustomImageView(
                                imagePath: ImageConstant
                                    .imgDocument1SvgrepoComWhiteA700,
                                height: 23.adaptSize,
                                width: 23.adaptSize,
                                alignment: Alignment.center)),
                        CustomImageView(
                            imagePath: ImageConstant.imgCalendar,
                            height: 23.adaptSize,
                            width: 23.adaptSize,
                            margin: EdgeInsets.only(bottom: 10.v))
                      ])),
              SizedBox(height: 6.v),
              Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                      padding: EdgeInsets.only(right: 86.h),
                      child: Text("lbl_documents".tr,
                          style: theme.textTheme.bodySmall))),
              SizedBox(height: 1.v)
            ]));
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.h),
        child: Consumer<DocumentsProvider>(builder: (context, provider, child) {
          return ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return SizedBox(height: 15.v);
              },
              itemCount: provider.documentsModelObj.userprofile1ItemList.length,
              itemBuilder: (context, index) {
                Userprofile1ItemModel model =
                    provider.documentsModelObj.userprofile1ItemList[index];
                return Userprofile1ItemWidget(model);
              });
        }));
  }

  /// Navigates to the profileDetailsScreen when the action is triggered.
  onTapImgImage(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.profileDetailsScreen,
    );
  }

  /// Navigates to the parentOrGuidanceScreen when the action is triggered.
  onTapImgFamilySvgrepoCom(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.parentOrGuidanceScreen,
    );
  }
}
