import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobfinder/screens/log_in_account/pass_success.dart';

import '../core/design/main_button.dart';
import '../core/design/text_pass.dart';
import '../core/logic/helper_method.dart';

class CreateYourPassView extends StatelessWidget {
  const CreateYourPassView({Key? key}) : super(key: key);

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
        leading: const SizedBox(),
        leadingWidth: 0,
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          Padding(
            padding: const EdgeInsetsDirectional.only(end: 24),
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
          padding: const EdgeInsetsDirectional.only(start: 24,top: 39,end: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Create new password",style: TextStyle(fontSize: 28,fontFamily: "SF",fontWeight: FontWeight.w500),),
              SizedBox(height: 8.h,),
              const Text("Set your new password so you can login and\nacces Jobsque",style: TextStyle(fontSize: 16,fontFamily: "SF",fontWeight: FontWeight.w400,color: Color(0xff6B7280)),),
              SizedBox(height: 44.h,),
              const TextPassView(labelText: "Password",inputType: TextInputType.visiblePassword,iconPath: "password"),
              SizedBox(height: 12.h,),
              const Text("Password must be at least 8 characters",style: TextStyle(fontSize: 14,fontFamily: "SF",fontWeight: FontWeight.w400,color: Color(0xff9CA3AF)),),
              SizedBox(height: 24.h,),
              const TextPassView(labelText: "Password",inputType: TextInputType.visiblePassword,iconPath: "password"),
              SizedBox(height: 12.h,),
              const Text("Both password must match",style: TextStyle(fontSize: 14,fontFamily: "SF",fontWeight: FontWeight.w400,color: Color(0xff9CA3AF)),),
              SizedBox(height: 266.h,),
              ButtonView(textInput: "Reset password", onClick: (){
                navigateTo(context, const PassSuccessView());
              }),
            ],
          ),
        ),
      ),
    );
  }
}
