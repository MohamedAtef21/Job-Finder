import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../bottom_navigation/view.dart';
import '../core/design/main_button.dart';
import '../core/logic/helper_method.dart';

class PassSuccessView extends StatelessWidget {
  const PassSuccessView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsetsDirectional.only(start: 25,top: 196,end: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/images/pass_changed.png",height: 142.h,width: 173.w,),
            SizedBox(height: 24.h,),
            const Text("Password changed succesfully!",style: TextStyle(fontSize: 24,fontFamily: "SF",fontWeight: FontWeight.w500,color: Color(0xff111827)),),
            SizedBox(height: 12.h,),
            const Text("Your password has been changed successfully,\nwe will let you know if there are more problems\nwith your account",style: TextStyle(fontSize: 14,fontFamily: "SF",fontWeight: FontWeight.w400,color: Color(0xff6B7280)),textAlign: TextAlign.center),
            SizedBox(height: 280.h,),
            ButtonView(textInput: "Open email app", onClick: (){
              navigateTo(context, const BottomNavigationView());
            },
            ),
          ],
        ),
      ),
    );
  }
}
