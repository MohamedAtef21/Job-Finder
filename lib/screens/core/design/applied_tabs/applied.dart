import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobfinder/screens/core/design/applied_tabs/second_page.dart';

import 'first_page.dart';

class AppliedJobsNavView extends StatefulWidget {
  const AppliedJobsNavView({Key? key}) : super(key: key);

  @override
  State<AppliedJobsNavView> createState() => _AppliedJobsNavViewState();
}

late TabController tabController;

class _AppliedJobsNavViewState extends State<AppliedJobsNavView> with SingleTickerProviderStateMixin {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }
  @override
  void dispose() {
    tabController.dispose(); // Dispose the TabController
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 327.w,
      height: 450.h,
      decoration: BoxDecoration(
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
              Tab(text: "Active",),
              Tab(text: "Rejected",),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: const [
                //1st tab
                ActiveAppliedView(),
                //
                //
                // //2nd tab
                RejectedAppliedView(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
