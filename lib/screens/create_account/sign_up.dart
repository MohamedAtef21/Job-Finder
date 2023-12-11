import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../core/design/text_icon_input.dart';
import '../core/design/text_iconpre_input.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  void signUserUp() async {
    // show loading circle
    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
    try {
      //check if password is matched
      if (passwordController.text == confirmPasswordController.text){
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
            email: emailController.text,
            password: passwordController.text,
        );
      }else{
        //error message if password doesn't match
      showErrorMessage("Password doesn't match");
      }

      Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      //wrong password
      Navigator.pop(context);
      //show error message
      showErrorMessage(e.code);
    }
  }

  //error message
  void showErrorMessage(String message) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.deepPurple,
          title: Center(
            child: Text(
              message,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        );
      },
    );
  }

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
          padding: const EdgeInsetsDirectional.only(top: 39, start: 24,end: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Cereate Account",
                style: TextStyle(
                    fontSize: 28, fontFamily: "SF", fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 8.h),
              const Text(
                "Please create an account to find your dream job",
                style: TextStyle(
                    fontSize: 16,
                    fontFamily: "SF",
                    fontWeight: FontWeight.w400,
                    color: Color(0xff6B7280),
                ),
              ),
              SizedBox(height: 44.h),
              //const TextIconInputView(inputType: TextInputType.name,obscureText: false,labelText: "Username",iconPath: "username",control: ),
              SizedBox(height: 16.h),
              TextIconInputView(inputType: TextInputType.emailAddress,obscureText: false,labelText: "Email",iconPath: "mail",control: emailController),
              SizedBox(height: 16.h),
              TextIconInputView(inputType: TextInputType.visiblePassword,obscureText: false,labelText: "Password",iconPath: "password",control: passwordController),
              SizedBox(height: 16.h),
              TextIconInputPreView(labelText: "Password",inputType: TextInputType.visiblePassword,iconPath: "password",onTap: signUserUp,control: confirmPasswordController,),
              // SizedBox(height: 105.h,),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     Text("Already have an account?  ",style: TextStyle(fontSize: 14,fontFamily: "SF",fontWeight: FontWeight.w500,color: Color(0xff9CA3AF)),),
              //     Text("Login",style: TextStyle(fontSize: 14,fontFamily: "SF",fontWeight: FontWeight.w500,color: Color(0xff3366FF),),),
              //   ],
              // ),
              // SizedBox(height: 20.h,),
              // Column(
              //   crossAxisAlignment: CrossAxisAlignment.stretch,
              //   children: [
              //     ButtonView(textInput: "Create account", onClick: (){
              //       navigateTo(context, WorkTypeView());
              //     },
              //     ),
              //   ],
              // ),
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset("assets/icons/line.svg",),
                  SizedBox(width: 25.w),
                  const Text("Or Sign up With Account",style: TextStyle(fontSize: 14,fontFamily: "SF",fontWeight: FontWeight.w400,color: Color(0xff6B7280)),),
                  SizedBox(width: 25.w),
                  SvgPicture.asset("assets/icons/line.svg",),
                ],
              ),
              SizedBox(height: 24.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        shape:RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.r),
                          side: const BorderSide(color: Color(0xffD1D5DB)),
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
                          side: const BorderSide(color: Color(0xffD1D5DB)),
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
