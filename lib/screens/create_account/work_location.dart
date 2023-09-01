import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobfinder/screens/core/logic/helper_method.dart';

import '../core/design/chip.dart';
import '../core/design/main_button.dart';
import '../core/design/work_location.dart';
import 'account_setup.dart';

class WorkLocationView extends StatefulWidget {
  const WorkLocationView({Key? key}) : super(key: key);

  @override
  State<WorkLocationView> createState() => _WorkLocationViewState();
}

class _WorkLocationViewState extends State<WorkLocationView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsetsDirectional.only(top: 60,start: 24,end: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Where are you prefefred\nLocation?",style: TextStyle(fontSize: 24,fontFamily: "SF",fontWeight: FontWeight.w500),),
            SizedBox(height: 12.h,),
            Text("Let us know, where is the work location you\nwant at this time, so we can adjust it.",style: TextStyle(fontSize: 16,fontFamily: "SF",fontWeight: FontWeight.w400,color: Color(0xff737379)),),
            SizedBox(height: 36.h,),
            WorkLocationsView(),
            SizedBox(height: 24.h,),
            Text("Select the country you want for your job",style: TextStyle(fontSize: 16,fontFamily: "SF",fontWeight: FontWeight.w400,color: Color(0xff737379)),),
            SizedBox(height: 20.h,),
            Row(
              children: [
                ChipView(textInput: "United States",imageinput: "usa_flag"),
                SizedBox(width: 12.w,),
                ChipView(textInput: "Malaysia",imageinput: "malaysia_flag"),
              ],
            ),
            SizedBox(height: 16.h,),
            Row(
              children: [
                ChipView(textInput: "Singapore",imageinput: "singapore_flag"),
                SizedBox(width: 12.w,),
                ChipView(textInput: "Indonesia",imageinput: "indonesia_flag"),
              ],
            ),
            SizedBox(height: 16.h,),
            Row(
              children: [
                ChipView(textInput: "Philiphines",imageinput: "philiphines_flag"),
                SizedBox(width: 12.w,),
                ChipView(textInput: "Polandia",imageinput: "polandia_flag"),
              ],
            ),
            SizedBox(height: 16.h,),
            Row(
              children: [
                ChipView(textInput: "India",imageinput: "india_flag"),
                SizedBox(width: 12.w,),
                ChipView(textInput: "Vietnam",imageinput: "vietnam_flag"),
                SizedBox(width: 12.w,),
                ChipView(textInput: "China",imageinput: "china_flag"),
              ],
            ),
            SizedBox(height: 16.h,),
            Row(
              children: [
                ChipView(textInput: "Canada",imageinput: "canada_flag"),
                SizedBox(width: 12.w,),
                ChipView(textInput: "Saudi Arabia",imageinput: "saudiArabia_flag"),
              ],
            ),
            SizedBox(height: 16.h,),
            Row(
              children: [
                ChipView(textInput: "Argentina",imageinput: "argentina_flag"),
                SizedBox(width: 12.w,),
                ChipView(textInput: "Brazil",imageinput: "brazil_flag"),
              ],
            ),
            SizedBox(height: 63.h,),
            ButtonView(textInput: "Next",onClick: (){
              navigateTo(context, AccountSetupView());
            }),
          ],
        ),
      ),
    );
  }
}
