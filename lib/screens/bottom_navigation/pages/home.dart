import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobfinder/screens/core/logic/helper_method.dart';
import 'package:jobfinder/screens/job_detail/view.dart';
import 'package:jobfinder/screens/core/logic/model.dart';

import '../../core/design/recent_job.dart';
import '../../core/design/suggested_job.dart';
import '../../core/design/text_search.dart';
import '../../notification/view.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  bool isLoading = false;
  bool isFailed = false;
  List<JobModel> list = [];

  Future<void> getMyJob() async {
    isLoading = true;
    setState(() {});
    try {
      var response =
          await Dio().get("https://project2.amit-learning.com/api/jobs");
      var responseList = response.data["data"] as List;
      for (int i = 0; i < responseList.length; i++) {
        var model = JobModel.fromMap(responseList[i]);
        list.add(model);
      }
    } on DioException {
      isFailed = true;
    }
    isLoading = false;
    setState(() {});
    isFailed
        ? ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text("Failed!!"),
            duration: Duration(seconds: 2),
          ))
        : navigateTo(context, const JobDetailView());
  }


  @override
  void initState() {
    getMyJob();
    super.initState();
  }

  // final List recentJobs = [
  //   ["Senior UI Designer", "Twitter • Jakarta, Indonesia", "twitter"],
  //   ["Senior UX Designer", "Discord • Jakarta, Indonesia", "discord"],
  //   ["Junior UI Designer", "Invision • Jakarta, Indonesia", "invision"],
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsetsDirectional.only(top: 60, start: 24, end: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Hi, Rafif Dian👋",
                          style: TextStyle(
                            fontSize: 24,
                            fontFamily: "SF",
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          )),
                      SizedBox(height: 8.h),
                      const Text(
                        "Create a better future for yourself here",
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: "SF",
                            fontWeight: FontWeight.w500,
                            color: Color(0xff6B7280)),
                      ),
                    ],
                  ),
                  // SizedBox(width: 38.w,),
                  IconButton(
                      onPressed: () {
                        navigateTo(context, const NotificationView());
                      },
                      icon: SvgPicture.asset("assets/icons/notification.svg")),
                ],
              ),
              SizedBox(height: 28.h),
              const TextSearchView(),
              SizedBox(height: 20.h),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Suggested Job",
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: "SF",
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "View all",
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: "SF",
                        fontWeight: FontWeight.w500,
                        color: Color(0xff3366FF)),
                  )
                ],
              ),
              SizedBox(height: 21.5.h),
              SizedBox(
                height: 183.h,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => const SuggestedJobView(),
                    separatorBuilder: (context, index) => SizedBox(
                          width: 16.w,
                        ),
                    itemCount: 2),
              ),
              SizedBox(height: 24.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Recent Job",
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: "SF",
                        fontWeight: FontWeight.w500),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      "View all",
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: "SF",
                          fontWeight: FontWeight.w500,
                          color: Color(0xff3366FF)),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 100),
              SizedBox(height: 20.h),
              // isLoading? Center(child: CircularProgressIndicator(),) : SizedBox(
              //   height: 300,
              //   child: ListView.separated(
              //     scrollDirection: Axis.vertical,
              //       itemBuilder: (context, index) => Container(
              //             height: 100,
              //             width: 100,
              //             child: Column(
              //               children: [
              //                 Text(list[index].name),
              //                 SizedBox(height: 20),
              //                 Image.network(list[index].image),
              //                 SizedBox(height: 20),
              //                 Text(list[index].compname)
              //               ],
              //             ),
              //           ),
              //       separatorBuilder: (context, index) => SizedBox(height: 20),
              //       itemCount: list.length),
              // )
              isLoading
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : SizedBox(
                      height: 269.h,
                      child: ListView.separated(
                        scrollDirection: Axis.vertical,
                        separatorBuilder: (context, index) => SizedBox(
                          height: 20.h,
                        ),
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              navigateTo(context, const JobDetailView());
                            },
                            child: RecentJobView(
                                title: list[index].name,
                                imageInput: list[index].image,
                                desc: list[index].compname),
                          );
                        },
                        itemCount: list.length,
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
