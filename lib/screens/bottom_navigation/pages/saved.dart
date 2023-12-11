import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SavedView extends StatelessWidget {
  const SavedView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Center(
        child: Padding(
          padding: const EdgeInsetsDirectional.only(top: 280),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/images/saved.png",height: 142.h,width: 173.w,),
              SizedBox(height: 24.h,),
              const Text("Nothing has been saved yet",style: TextStyle(fontSize: 24,fontFamily: "SF",fontWeight: FontWeight.w500,color: Color(0xff111827)),),
              SizedBox(height: 12.h,),
              const Text("Press the star icon on the job you want to save.",style: TextStyle(fontSize: 16,fontFamily: "SF",fontWeight: FontWeight.w400,color: Color(0xff6B7280)),textAlign: TextAlign.center),
            ],
          ),
        ),
      ),
    );
  }
}
