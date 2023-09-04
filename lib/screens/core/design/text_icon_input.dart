import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TextIconInputView extends StatelessWidget {
  final String labelText,iconPath;
  final bool obscureText ;
  final TextInputType inputType;
  const TextIconInputView({Key? key, required this.labelText, required this.iconPath, required this.obscureText, required this.inputType}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: inputType,
      obscureText: obscureText,
      decoration: InputDecoration(
        prefixIcon:SvgPicture.asset("assets/icons/${iconPath}.svg",fit: BoxFit.scaleDown,),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
        ),
        hintText:labelText,
        hintStyle:TextStyle(fontSize: 14,fontFamily: "SF",fontWeight: FontWeight.w400,color: Color(0xff9CA3AF))
      ),
    );
  }
}
