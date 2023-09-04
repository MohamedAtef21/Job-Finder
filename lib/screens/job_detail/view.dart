import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobfinder/screens/core/design/main_button.dart';

import '../core/design/tabs/company_details.dart';
import '../core/design/container_job_detail.dart';

class JobDetailView extends StatelessWidget {
  const JobDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Job Detail",style: TextStyle(fontSize: 20,fontFamily: "SF",fontWeight: FontWeight.w500,color: Color(0xff111827)),),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: SvgPicture.asset("assets/icons/arrow_left.svg"),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          Padding(
            padding: EdgeInsetsDirectional.only(end: 24,),
            child: SvgPicture.asset("assets/icons/savedc.svg")
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsetsDirectional.only(top: 32,start: 24,end: 24),
        child: Stack(
          children: [
            Column(
              children: [
                Center(child: JobDetailsContView()),
                SizedBox(height: 32.h,),
                CompanyDetailsView(),
                ButtonView(textInput: "Apply now", onClick: (){})
              ],
            ),
          ],
        ),
      ),
    );
  }
}
