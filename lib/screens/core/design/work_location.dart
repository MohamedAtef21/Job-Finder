import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WorkLocationsView extends StatefulWidget {
  const WorkLocationsView({Key? key}) : super(key: key);

  @override
  State<WorkLocationsView> createState() => _WorkLocationsViewState();
}
late TabController tabController;

class _WorkLocationsViewState extends State<WorkLocationsView> with SingleTickerProviderStateMixin{

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this); // Initialize the TabController
  }
  @override
  void dispose() {
    tabController.dispose(); // Dispose the TabController
    super.dispose();
  }
  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 327.w,
      height: 50.h,
      decoration: BoxDecoration(
        color: const Color(0xffF4F4F5),
        borderRadius: BorderRadius.circular(100.r),
      ),
      child: Column(
        children: [
          TabBar(
            indicator: BoxDecoration(
              color: const Color(0xff091A7A),
              borderRadius: BorderRadius.circular(100.r),
            ),
            labelColor: const Color(0xffFFFFFF),
            unselectedLabelColor: const Color(0xff6B7280),
            controller: tabController,
            tabs: const [
              Tab(text: "Work From Office",),
              Tab(text: "Remote Work",),
            ],
          ),
        ],
      ),
    );
  }
}
//
// Row(
// children: [
// GestureDetector(
// child: isClicked
// ? Container(
// height: 40.h,
// width: 160.w,
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(100.r),
// color: Color(0xffF4F4F5),
// ),
// child: Center(
// child: Text(
// "Work From Office",
// style: TextStyle(
// fontSize: 14.sp,
// fontWeight: FontWeight.w500,
// color: Color(0xff6B7280),
// ),
// ),
// ),
// )
//     : Container(
// height: 40.h,
// width: 160.w,
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(100.r),
// color: Color(0xff091A7A),
// ),
// child: Center(
// child: Text(
// "Work From Office",
// style: TextStyle(
// fontSize: 14.sp,
// fontWeight: FontWeight.w500,
// color: Color(0xffFFFFFF),
// ),
// ),
// ),
// ),
// onTap: () {
// isClicked = !isClicked;
// setState(() {});
// },
// ),
// GestureDetector(
// child: isClicked
// ? Container(
// height: 40.h,
// width: 160.w,
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(100.r),
// color: Color(0xff091A7A),
// ),
// child: Center(
// child: Text(
// "Remote Work",
// style: TextStyle(
// fontSize: 14.sp,
// fontWeight: FontWeight.w500,
// color: Color(0xffFFFFFF),
// ),
// ),
// ),
// )
//     : Container(
// height: 40.h,
// width: 160.w,
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(100.r),
// color: Color(0xffF4F4F5),
// ),
// child: Center(
// child: Text(
// "Remote Work",
// style: TextStyle(
// fontSize: 14.sp,
// fontWeight: FontWeight.w500,
// color: Color(0xff6B7280),
// ),
// ),
// ),
// ),
// onTap: () {
// isClicked = !isClicked;
// setState(() {});
// },
// ),
// ],
// );
