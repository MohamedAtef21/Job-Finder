import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobfinder/screens/core/design/main_button.dart';
import 'package:jobfinder/screens/core/logic/helper_method.dart';
import 'package:jobfinder/screens/create_account/work_location.dart';

import '../core/design/container_work_type.dart';

class WorkTypeView extends StatelessWidget {
  const WorkTypeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsDirectional.only(top: 60,start: 24,end: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("What type of work are you\ninterested in?",style: TextStyle(fontSize: 24,fontFamily: "SF",fontWeight: FontWeight.w500),),
              SizedBox(height: 12.h,),
              Text("Tell us what you’re interested in so we can\ncustomise the app for your needs.",style: TextStyle(fontSize: 16,fontFamily: "SF",fontWeight: FontWeight.w400,color: Color(0xff737379)),),
              SizedBox(height: 36.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  WorkTypeChooseView(imageInput: "wt1",textInput: "UI/UX Designer"),
                  WorkTypeChooseView(imageInput: "wt2",textInput: "Ilustrator Designer"),
                ],
              ),
              SizedBox(height: 20.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  WorkTypeChooseView(imageInput: "wt3",textInput: "Developer"),
                  WorkTypeChooseView(imageInput: "wt4",textInput: "Management"),
                ],
              ),
              SizedBox(height: 20.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  WorkTypeChooseView(imageInput: "wt5",textInput: "Information\nTechnology"),
                  WorkTypeChooseView(imageInput: "wt6",textInput: "Research and\nAnalytics"),
                ],
              ),
              SizedBox(height: 66.h,),
              ButtonView(textInput: "Next", onClick: (){
                navigateTo(context, WorkLocationView());
              }),
            ],
          ),
        ),
      ),
    );
  }
}
