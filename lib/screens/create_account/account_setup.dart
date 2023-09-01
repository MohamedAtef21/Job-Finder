import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobfinder/screens/core/design/main_button.dart';
import 'package:jobfinder/screens/core/logic/helper_method.dart';

import '../bottom_navigation/view.dart';

class AccountSetupView extends StatelessWidget {
  const AccountSetupView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: SvgPicture.asset("assets/icons/arrow_left.svg"),
        ),
        leading: SizedBox(),
        leadingWidth: 0,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: EdgeInsetsDirectional.only(start: 25,top: 97,end: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/images/acc_setup.png",height: 142.h,width: 173.w,),
            SizedBox(height: 24.h,),
            Text("Your account has been set up!",style: TextStyle(fontSize: 24,fontFamily: "SF",fontWeight: FontWeight.w500,color: Color(0xff111827)),),
            SizedBox(height: 8.h,),
            Text("We have customized feeds according to your\npreferences",style: TextStyle(fontSize: 14,fontFamily: "SF",fontWeight: FontWeight.w400,color: Color(0xff6B7280)),textAlign: TextAlign.center),
            SizedBox(height: 295.h,),
            ButtonView(textInput: "Get Started", onClick: (){
              navigateTo(context, BottomNavigationView());
            }),
          ],
        ),
      ),
    );
  }
}
