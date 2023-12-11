import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../core/design/main_button.dart';
import '../core/logic/helper_method.dart';
import 'check_your_email.dart';
import 'log_in.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({Key? key}) : super(key: key);

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
              const Text("Reset Password",style: TextStyle(fontSize: 28,fontFamily: "SF",fontWeight: FontWeight.w500),),
              SizedBox(height: 8.h,),
              const Text("Enter the email address you used when you\njoined and we’ll send you instructions to reset\nyour password.",style: TextStyle(fontSize: 16,fontFamily: "SF",fontWeight: FontWeight.w400,color: Color(0xff6B7280)),),
              SizedBox(height: 40.h,),
            //  const TextIconInputView(labelText: "Enter your email....",iconPath: "mail",obscureText: false,inputType: TextInputType.emailAddress),
              SizedBox(height: 355.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("You remember your password  ",style: TextStyle(fontSize: 14,fontFamily: "SF",fontWeight: FontWeight.w500,color: Color(0xff9CA3AF)),),
                  GestureDetector(onTap: (){
                    navigateTo(context, const LogInView());
                  },
                      child: const Text("Login",style: TextStyle(fontSize: 14,fontFamily: "SF",fontWeight: FontWeight.w500,color: Color(0xff3366FF),),)),
                ],
              ),
              SizedBox(height: 20.h,),
              ButtonView(textInput: "Request password reset", onClick: (){
                navigateTo(context, const CheckYourEmailView());
              }),
            ],
          ),
        ),
      ),
    );
  }
}
