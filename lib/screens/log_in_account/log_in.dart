import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobfinder/screens/core/design/text_icon_input.dart';

import '../core/design/text_icpn_pass.dart';

class LogInView extends StatefulWidget {
  const LogInView({Key? key}) : super(key: key);

  @override
  State<LogInView> createState() => _LogInViewState();
}

class _LogInViewState extends State<LogInView> {
  bool isLoading = false;
  bool isFailed = false;

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void signUserIn() async {
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
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
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

// Future<void> login()async{
//   isLoading = true;
//   setState(() {});
//   try{
//     var response = await Dio().post("https://project2.amit-learning.com/api/auth/login",data: {
//       "email":nameController.text,
//       "password":passwordController.text,
//     },
//     );
//   }on DioException{
//     isFailed = true;
//   }
//   isLoading = false;
//   setState(() {});
//   isFailed? ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text("Failed!!"),
//     duration: Duration(seconds: 5),
//   ))
//       :  navigateTo(context, BottomNavigationView());
// }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
          padding:
              const EdgeInsetsDirectional.only(start: 24, top: 44, end: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Login",
                style: TextStyle(
                    fontSize: 28,
                    fontFamily: "SF",
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 8.h,
              ),
              const Text(
                "Please login to find your dream job",
                style: TextStyle(
                    fontSize: 16,
                    fontFamily: "SF",
                    fontWeight: FontWeight.w400,
                    color: Color(0xff6B7280)),
              ),
              // SizedBox(height: 44.h),
              // TextFormField(
              //   controller: emailController,
              //   decoration: InputDecoration(
              //       border: OutlineInputBorder(
              //         borderRadius: BorderRadius.circular(15),
              //       ),
              //       labelText: "Email"),
              // ),
              // SizedBox(
              //   height: 10,
              // ),
              // TextFormField(
              //   controller: passwordController,
              //   decoration: InputDecoration(
              //       border: OutlineInputBorder(
              //         borderRadius: BorderRadius.circular(15),
              //       ),
              //       labelText: "Password"),
              // ),
              // SizedBox(
              //   height: 10,
              // ),
              // GestureDetector(
              //   onTap: SignUserIn,
              //   child: Container(
              //     height: 50,
              //     width: 50,
              //     color: Colors.blueAccent,
              //     child: Center(child: Text("Login"),),
              //   ),
              // ),
              const SizedBox(height: 20),
              TextIconInputView(
                  labelText: "Username",
                  iconPath: "username",
                  obscureText: false,
                  inputType: TextInputType.emailAddress,
                  control: emailController),
              SizedBox(
                height: 16.h,
              ),
              TextIconPassView(
                  labelText: "Password",
                  iconPath: "password",
                  inputType: TextInputType.visiblePassword,
                  control: passwordController,
                  onTap: signUserIn),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    "assets/icons/line.svg",
                  ),
                  SizedBox(
                    width: 25.w,
                  ),
                  const Text(
                    "Or Sign up With Account",
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: "SF",
                        fontWeight: FontWeight.w400,
                        color: Color(0xff6B7280)),
                  ),
                  SizedBox(
                    width: 25.w,
                  ),
                  SvgPicture.asset(
                    "assets/icons/line.svg",
                  ),
                ],
              ),
              SizedBox(
                height: 24.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.r),
                          side: const BorderSide(color: Color(0xffD1D5DB)),
                        ),
                        backgroundColor: const Color(0xffFFFFFF),
                        fixedSize: const Size(154, 46)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/google.png",
                          height: 16.h,
                          width: 16.w,
                        ),
                        SizedBox(
                          width: 8.w,
                        ),
                        const Text(
                          "Google",
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: "SF",
                              fontWeight: FontWeight.w500,
                              color: Color(0xff363F5E)),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10.w),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.r),
                          side: const BorderSide(color: Color(0xffD1D5DB)),
                        ),
                        backgroundColor: const Color(0xffFFFFFF),
                        fixedSize: const Size(154, 46)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/facebook.png",
                          height: 16.h,
                          width: 16.w,
                        ),
                        SizedBox(
                          width: 8.w,
                        ),
                        const Text("Facebook",
                            style: TextStyle(
                                fontSize: 14,
                                fontFamily: "SF",
                                fontWeight: FontWeight.w500,
                                color: Color(0xff363F5E))),
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
