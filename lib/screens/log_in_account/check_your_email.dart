import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobfinder/screens/core/logic/helper_method.dart';

import '../core/design/main_button.dart';
import 'create_your_pass.dart';

class CheckYourEmailView extends StatelessWidget {
  const CheckYourEmailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsetsDirectional.only(start: 25,top: 204,end: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/images/email_check.png",height: 142.h,width: 173.w,),
            SizedBox(height: 24.h,),
            const Text("Check your Email",style: TextStyle(fontSize: 24,fontFamily: "SF",fontWeight: FontWeight.w500,color: Color(0xff111827)),),
            SizedBox(height: 8.h,),
            const Text("We have sent a reset password to your email\naddress",style: TextStyle(fontSize: 14,fontFamily: "SF",fontWeight: FontWeight.w400,color: Color(0xff6B7280)),textAlign: TextAlign.center),
            SizedBox(height: 295.h,),
            ButtonView(textInput: "Open email app", onClick: (){
              navigateTo(context, const CreateYourPassView());
            }),
          ],
        ),
      ),
    );
  }
}
