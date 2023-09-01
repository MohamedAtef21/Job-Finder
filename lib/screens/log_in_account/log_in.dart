import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobfinder/screens/core/design/text_icon_input.dart';

import '../core/design/text_icpn_pass.dart';

class LogInView extends StatelessWidget {
  const LogInView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        leadingWidth: 0,
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          Padding(
            padding: EdgeInsetsDirectional.only(end: 24),
            child: Image.asset(
              "assets/images/logo.png",
              height: 19.h,
              width: 81.w,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsDirectional.only(start: 24,top: 44,end: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Login",style: TextStyle(fontSize: 28,fontFamily: "SF",fontWeight: FontWeight.w500),),
              SizedBox(height: 8.h,),
              Text("Please login to find your dream job",style: TextStyle(fontSize: 16,fontFamily: "SF",fontWeight: FontWeight.w400,color: Color(0xff6B7280)),),
              SizedBox(height: 44.h,),
              TextIconInputView(labelText: "Username", iconPath: "username", obscureText: false, inputType: TextInputType.emailAddress),
              SizedBox(height: 16.h,),
              TextIconPassView(labelText: "Password",iconPath: "password",inputType: TextInputType.visiblePassword),
              SizedBox(height: 20.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset("assets/icons/line.svg",),
                  SizedBox(width: 25.w,),
                  Text("Or Sign up With Account",style: TextStyle(fontSize: 14,fontFamily: "SF",fontWeight: FontWeight.w400,color: Color(0xff6B7280)),),
                  SizedBox(width: 25.w,),
                  SvgPicture.asset("assets/icons/line.svg",),
                ],
              ),
              SizedBox(height: 24.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        shape:RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.r),
                          side: BorderSide(color: Color(0xffD1D5DB)),
                        ),
                        backgroundColor: const Color(0xffFFFFFF),
                        fixedSize: const Size(154, 46)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/google.png",height: 16.h,width: 16.w,),
                        SizedBox(width: 8.w,),
                        const Text("Google",style: TextStyle(fontSize: 14,fontFamily: "SF",fontWeight: FontWeight.w500,color: Color(0xff363F5E)),),
                      ],
                    ),
                  ),
                  SizedBox(width: 10.w),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        shape:RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.r),
                          side: BorderSide(color: Color(0xffD1D5DB)),
                        ),
                        backgroundColor: const Color(0xffFFFFFF),
                        fixedSize: const Size(154, 46)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/facebook.png",height: 16.h,width: 16.w,),
                        SizedBox(width: 8.w,),
                        const Text("Facebook",style: TextStyle(fontSize: 14,fontFamily: "SF",fontWeight: FontWeight.w500,color: Color(0xff363F5E))),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
