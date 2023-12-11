import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobfinder/screens/core/design/tabs/first_tab.dart';
import 'package:jobfinder/screens/core/design/tabs/second_tab.dart';
import 'package:jobfinder/screens/core/design/tabs/third%20tab.dart';

class CompanyDetailsView extends StatefulWidget {
  const CompanyDetailsView({Key? key}) : super(key: key);

  @override
  State<CompanyDetailsView> createState() => _CompanyDetailsViewState();
}

late TabController tabController;

class _CompanyDetailsViewState extends State<CompanyDetailsView> with SingleTickerProviderStateMixin{

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this); // Initialize the TabController
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
                  Tab(text: "Desicription",),
                  Tab(text: "Company",),
                  Tab(text: "People",),
                ],
              ),
              Expanded(
                child: TabBarView(
                  controller: tabController,
                  children: const [
                    //1st tab
                    DescriptionView(),


                    //2nd tab
                    CompanyView(),


                    //3rd tab
                    PeopleView(),
                  ],
                ),
              ),
            ],
          ),
    );
  }
}
