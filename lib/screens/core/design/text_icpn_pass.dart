import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../create_account/sign_up.dart';
import '../../log_in_account/forget_password.dart';
import '../logic/helper_method.dart';

class TextIconPassView extends StatefulWidget {
  final String labelText, iconPath;
  final TextInputType inputType;
  final TextEditingController control;
  Function()? onTap;
  TextIconPassView({Key? key, required this.labelText, required this.iconPath, required this.inputType, required this.control,required this.onTap}) : super(key: key);

  @override
  State<TextIconPassView> createState() => _TextIconPassViewState();
}

class _TextIconPassViewState extends State<TextIconPassView> {

  // bool isLoading = false;
  // bool isFailed = false;
  //
  // final emailController = TextEditingController();
  // final passwordcontroller = TextEditingController();
  //
  //
  // Future<void> login()async{
  //   isLoading = true;
  //   setState(() {});
  //   try{
  //     var response = await Dio().post("https://project2.amit-learning.com/api/auth/login",data: {
  //       "phone":emailController.text,
  //       "password":passwordcontroller.text,
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
  bool _passwordVisible = false;
  String _password = "";
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    bool isPasswordValid = _password.isNotEmpty;
    return Column(
      children: [
        TextFormField(
          controller: widget.control,
          keyboardType: widget.inputType,
          obscureText: !(_passwordVisible && true),
          onChanged: (value) {
            _password = value;
            setState(() {});
          },
          decoration: InputDecoration(
              prefixIcon:SvgPicture.asset("assets/icons/${widget.iconPath}.svg",fit: BoxFit.scaleDown,),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.r),
              ),
              hintText:widget.labelText,
              hintStyle:const TextStyle(fontSize: 14,fontFamily: "SF",fontWeight: FontWeight.w400,color: Color(0xff9CA3AF)),
            suffixIcon: GestureDetector(
                onTap: () {
                  _passwordVisible = !_passwordVisible;
                  setState(() {});
                },
                child: _passwordVisible
                    ? SvgPicture.asset(
                  "assets/icons/eye.svg",
                  fit: BoxFit.scaleDown,
                )
                    : SvgPicture.asset(
                  "assets/icons/eye.svg",
                  fit: BoxFit.scaleDown,
                )),
          ),
        ),
        SizedBox(height: 20.h,),
        Row(
          children: [
            Checkbox(value: isChecked, onChanged: (bool? value){
              isChecked = value!;
              setState(() {});
            }),
            const Text("Remember me",style: TextStyle(fontSize: 14,fontFamily: "SF",fontWeight: FontWeight.w400,)),
            SizedBox(width: 110.w,),
            GestureDetector(onTap: (){
              navigateTo(context, const ForgetPasswordView());
            },
                child: const Text("Forgot Password?",style: TextStyle(fontSize: 14,fontFamily: "SF",fontWeight: FontWeight.w400,color: Color(0xff3366FF)),))
          ],
        ),
        SizedBox(height: 173.h,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Dont’t have an account?  ",style: TextStyle(fontSize: 14,fontFamily: "SF",fontWeight: FontWeight.w500,color: Color(0xff9CA3AF)),),
            GestureDetector(onTap: (){
              navigateTo(context, const SignUpView());
            },
                child: const Text("Register",style: TextStyle(fontSize: 14,fontFamily: "SF",fontWeight: FontWeight.w500,color: Color(0xff3366FF),),)),
          ],
        ),
        SizedBox(height: 24.h,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            GestureDetector(
              onTap: widget.onTap,
              child: Container(
                height: 48,
                decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.circular(1000),
                ),
                child: const Center(child: Text("Login"),),
              ),
            ),
            // ElevatedButton(onPressed: isPasswordValid ? (){
            //   widget.onTap;
            // } : null,
            //   style: ButtonStyle(
            //     shape: MaterialStatePropertyAll(
            //       RoundedRectangleBorder(borderRadius: BorderRadius.circular(1000.r)),
            //     ),
            //     backgroundColor: MaterialStateProperty.all<Color>(
            //         isPasswordValid ? const Color(0xff3366FF) : const Color(0xffD1D5DB)
            //     ),
            //   ),
            //   child: const Text("Login"),
            // ),
          ],
        ),
      ],
    );
  }
}
