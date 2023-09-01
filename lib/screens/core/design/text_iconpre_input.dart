import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobfinder/screens/core/logic/helper_method.dart';

import '../../create_account/work_type.dart';
import '../../log_in_account/log_in.dart';

class TextIconInputPreView extends StatefulWidget {
  final String labelText, iconPath;

  // final bool obscureText;

  final TextInputType inputType;

  const TextIconInputPreView(
      {Key? key,
      required this.labelText,
      required this.iconPath,
      //  required this.obscureText,
      required this.inputType})
      : super(key: key);

  @override
  State<TextIconInputPreView> createState() => _TextIconInputViewState();
}

class _TextIconInputViewState extends State<TextIconInputPreView> {
  bool _passwordVisible = false;
  String _password = "";
  @override
  Widget build(BuildContext context) {
    Color labelColor =
        _password.length >= 8 ? Color(0xff60C631) : Color(0xffFF472B);
    Color textFieldColor =
        _password.length >= 8 ? Color(0xff9CA3AF) : Color(0xffFF472B);
    bool isPasswordValid = _password.isNotEmpty && _password.length >= 8;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          keyboardType: widget.inputType,
          obscureText: !(_passwordVisible && true),
          onChanged: (value) {
            _password = value;
            setState(() {});
          },
          decoration: InputDecoration(
            prefixIcon: SvgPicture.asset(
              "assets/icons/${widget.iconPath}.svg",
              fit: BoxFit.scaleDown,
            ),
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
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
            ),
            labelText: widget.labelText,
            labelStyle: TextStyle(
              fontSize: 14,
              fontFamily: "SF",
              fontWeight: FontWeight.w400,
              color: labelColor,
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: textFieldColor),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: textFieldColor),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xffFF472B)),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xffFF472B)),
            ),
          ),
        ),
        SizedBox(
          height: 12.h,
        ),
        Text(
          "Password must be at least 8 characters",
          style: TextStyle(
              fontSize: 16,
              fontFamily: "SF",
              fontWeight: FontWeight.w400,
              color: labelColor,),
        ),
        SizedBox(height: 105.h,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Already have an account?  ",style: TextStyle(fontSize: 14,fontFamily: "SF",fontWeight: FontWeight.w500,color: Color(0xff9CA3AF)),),
            GestureDetector(onTap: (){
              navigateTo(context, LogInView());
            },
                child: Text("Login",style: TextStyle(fontSize: 14,fontFamily: "SF",fontWeight: FontWeight.w500,color: Color(0xff3366FF),),)),
          ],
        ),
        SizedBox(height: 20.h,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 48.h,
              child: ElevatedButton(onPressed: isPasswordValid ? (){
                navigateTo(context, WorkTypeView());
              } : null,
                style: ButtonStyle(
                    shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(borderRadius: BorderRadius.circular(1000.r)),
                    ),
                  backgroundColor: MaterialStateProperty.all<Color>(
                      isPasswordValid ? Color(0xff3366FF) : Color(0xffD1D5DB)
                  ),
                ),
                  child: Text("Create account"),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
