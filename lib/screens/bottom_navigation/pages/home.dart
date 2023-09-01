import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/design/recent_job.dart';
import '../../core/design/suggested_job.dart';
import '../../core/design/text_search.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsDirectional.only(top: 60,start: 24,end: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Hi, Rafif Dian👋",style: TextStyle(fontSize: 24,fontFamily: "SF",fontWeight: FontWeight.w500,color: Colors.black,)),
                      SizedBox(height: 8.h,),
                      Text("Create a better future for yourself here",style: TextStyle(fontSize: 14,fontFamily: "SF",fontWeight: FontWeight.w500,color: Color(0xff6B7280)),),
                    ],
                  ),
                 // SizedBox(width: 38.w,),
                  IconButton(onPressed: (){},
                      icon: SvgPicture.asset("assets/icons/notification.svg")),
                ],
              ),
              SizedBox(height: 28.h,),
              TextSearchView(),
              SizedBox(height: 20.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Suggested Job",style: TextStyle(fontSize: 18,fontFamily: "SF",fontWeight: FontWeight.w500),),
                  Text("View all",style: TextStyle(fontSize: 14,fontFamily: "SF",fontWeight: FontWeight.w500,color: Color(0xff3366FF)),)
                ],
              ),
              SizedBox(height: 21.5.h,),
              SuggestedJobView(),
              SizedBox(height: 24.h,), Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Recent Job",style: TextStyle(fontSize: 18,fontFamily: "SF",fontWeight: FontWeight.w500),),
                  Text("View all",style: TextStyle(fontSize: 14,fontFamily: "SF",fontWeight: FontWeight.w500,color: Color(0xff3366FF)),)
                ],
              ),
              SizedBox(height: 20.h,),
              RecentJobView(title: "Senior UI Designer",desc: "Twitter • Jakarta, Indonesia",imageInput: "twitter",),
              SizedBox(height: 20.h,),
              RecentJobView(title: "Senior UX Designer",desc: "Discord • Jakarta, Indonesia",imageInput: "discord",),
              SizedBox(height: 20.h,),
              RecentJobView(title: "Junior UI Designer",desc: "Invision • Jakarta, Indonesia",imageInput: "invision",),
            ],
          ),
        ),
      ),
    );
  }
}
