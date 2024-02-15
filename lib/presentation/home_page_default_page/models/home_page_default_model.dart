import '../../../core/app_export.dart';
import 'dashboard_item_model.dart';

class HomePageDefaultModel {
  List<DashboardItemModel> dashboardItemList = [
    DashboardItemModel(
        hostelImage: ImageConstant.imgBed, assignmentText: "Hostel"),
    DashboardItemModel(
        hostelImage: ImageConstant.imgAttendanceSvgrepoCom,
        assignmentText: "Attendance"),
    DashboardItemModel(
        hostelImage: ImageConstant.imgTimetable, assignmentText: "Time table"),
    DashboardItemModel(
        hostelImage: ImageConstant.imgExamSvgrepoCom,
        assignmentText: "Online Exam"),
    DashboardItemModel(
        hostelImage: ImageConstant.imgMaximize, assignmentText: "Curriculum"),
    DashboardItemModel(
        hostelImage: ImageConstant.imgLibraryOutline,
        assignmentText: "Library"),
    DashboardItemModel(
        hostelImage: ImageConstant.imgAccountingSvgrepoCom,
        assignmentText: "Accounting"),
    DashboardItemModel(
        hostelImage: ImageConstant.imgChartBellCurve,
        assignmentText: "Reports"),
    DashboardItemModel(
        hostelImage: ImageConstant.imgThumbsUp, assignmentText: "Class room"),
    DashboardItemModel(
        hostelImage: ImageConstant.imgFrame1000011749,
        assignmentText: "Transport"),
    DashboardItemModel(
        hostelImage: ImageConstant.imgFamilySvgrepoCom,
        assignmentText: "Parent Info"),
    DashboardItemModel(
        hostelImage: ImageConstant.imgStudentPerson4SvgrepoCom,
        assignmentText: "Student Info")
  ];
}
