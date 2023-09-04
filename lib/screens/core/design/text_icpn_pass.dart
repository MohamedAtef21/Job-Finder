import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../bottom_navigation/view.dart';
import '../../create_account/sign_up.dart';
import '../../log_in_account/forget_password.dart';
import '../logic/helper_method.dart';

class TextIconPassView extends StatefulWidget {
  final String labelText, iconPath;
  final TextInputType inputType;
  const TextIconPassView({Key? key, required this.labelText, required this.iconPath, required this.inputType}) : super(key: key);

  @override
  State<TextIconPassView> createState() => _TextIconPassViewState();
}

class _TextIconPassViewState extends State<TextIconPassView> {
  bool _passwordVisible = false;
  String _password = "";
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    bool isPasswordValid = _password.isNotEmpty;
    return Column(
      children: [
        TextFormField(
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
              hintStyle:TextStyle(fontSize: 14,fontFamily: "SF",fontWeight: FontWeight.w400,color: Color(0xff9CA3AF)),
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
            Text("Remember me",style: TextStyle(fontSize: 14,fontFamily: "SF",fontWeight: FontWeight.w400,)),
            SizedBox(width: 110.w,),
            GestureDetector(onTap: (){
              navigateTo(context, ForgetPasswordView());
            },
                child: Text("Forgot Password?",style: TextStyle(fontSize: 14,fontFamily: "SF",fontWeight: FontWeight.w400,color: Color(0xff3366FF)),))
          ],
        ),
        SizedBox(height: 173.h,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Dont’t have an account?  ",style: TextStyle(fontSize: 14,fontFamily: "SF",fontWeight: FontWeight.w500,color: Color(0xff9CA3AF)),),
            GestureDetector(onTap: (){
              navigateTo(context, SignUpView());
            },
                child: Text("Register",style: TextStyle(fontSize: 14,fontFamily: "SF",fontWeight: FontWeight.w500,color: Color(0xff3366FF),),)),
          ],
        ),
        SizedBox(height: 24.h,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 48.h,
              child: ElevatedButton(onPressed: isPasswordValid ? (){
                navigateTo(context, BottomNavigationView());
              } : null,
                style: ButtonStyle(
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(1000.r)),
                  ),
                  backgroundColor: MaterialStateProperty.all<Color>(
                      isPasswordValid ? Color(0xff3366FF) : Color(0xffD1D5DB)
                  ),
                ),
                child: Text("Login"),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
