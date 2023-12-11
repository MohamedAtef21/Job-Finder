import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Padding(
        padding: const EdgeInsetsDirectional.only(top: 280),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/images/notification.png",height: 142.h,width: 173.w,),
            SizedBox(height: 24.h,),
            const Text("No new notifications yet",style: TextStyle(fontSize: 24,fontFamily: "SF",fontWeight: FontWeight.w500,color: Color(0xff111827)),),
            SizedBox(height: 12.h,),
            const Text("You will receive a notification if there is\nsomething on your account",style: TextStyle(fontSize: 16,fontFamily: "SF",fontWeight: FontWeight.w400,color: Color(0xff6B7280)),textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}
