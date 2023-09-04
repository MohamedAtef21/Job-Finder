import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobfinder/screens/core/logic/helper_method.dart';
import 'package:jobfinder/screens/job_detail/view.dart';

import '../../core/design/recent_job.dart';
import '../../core/design/suggested_job.dart';
import '../../core/design/text_search.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  final List recentJobs = [
    ["Senior UI Designer", "Twitter • Jakarta, Indonesia", "twitter"],
    ["Senior UX Designer", "Discord • Jakarta, Indonesia", "discord"],
    ["Junior UI Designer", "Invision • Jakarta, Indonesia", "invision"],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsDirectional.only(top: 60, start: 24, end: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Hi, Rafif Dian👋", style: TextStyle(fontSize: 24,
                        fontFamily: "SF",
                        fontWeight: FontWeight.w500,
                        color: Colors.black,)),
                      SizedBox(height: 8.h,),
                      Text("Create a better future for yourself here",
                        style: TextStyle(fontSize: 14,
                            fontFamily: "SF",
                            fontWeight: FontWeight.w500,
                            color: Color(0xff6B7280)),),
                    ],
                  ),
                  // SizedBox(width: 38.w,),
                  IconButton(onPressed: () {},
                      icon: SvgPicture.asset("assets/icons/notification.svg")),
                ],
              ),
              SizedBox(height: 28.h,),
              TextSearchView(),
              SizedBox(height: 20.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Suggested Job", style: TextStyle(fontSize: 18,
                      fontFamily: "SF",
                      fontWeight: FontWeight.w500),),
                  Text("View all", style: TextStyle(fontSize: 14,
                      fontFamily: "SF",
                      fontWeight: FontWeight.w500,
                      color: Color(0xff3366FF)),)
                ],
              ),
              SizedBox(height: 21.5.h,),
              SizedBox(
                height: 183.h,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => SuggestedJobView(),
                    separatorBuilder: (context, index) =>
                        SizedBox(width: 16.w,),
                    itemCount: 2
                ),
              ),
              SizedBox(height: 24.h,), Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Recent Job", style: TextStyle(fontSize: 18,
                      fontFamily: "SF",
                      fontWeight: FontWeight.w500),),
                  GestureDetector(
                    onTap: (){},
                    child: Text("View all", style: TextStyle(fontSize: 14,
                        fontFamily: "SF",
                        fontWeight: FontWeight.w500,
                        color: Color(0xff3366FF)),),
                  )
                ],
              ),
              //SizedBox(height: 20.h,),
              SizedBox(
                height: 269.h,
                child: ListView.separated(
                  scrollDirection: Axis.vertical,
                  separatorBuilder: (context, index) => SizedBox(height: 20.h,),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: (){
                        navigateTo(context, JobDetailView());
                      },
                      child: RecentJobView(
                        title: recentJobs[index][0],
                        desc: recentJobs[index][1],
                        imageInput: recentJobs[index][2],
                      ),
                    );
                  },
                  itemCount: recentJobs.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
