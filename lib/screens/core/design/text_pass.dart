import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class TextPassView extends StatefulWidget {
  final String labelText, iconPath;
  final TextInputType inputType;
  const TextPassView({Key? key, required this.labelText, required this.iconPath, required this.inputType}) : super(key: key);

  @override
  State<TextPassView> createState() => _TextPassViewState();
}

class _TextPassViewState extends State<TextPassView> {
  bool _passwordVisible = false;
  String _password = "";
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    bool isPasswordValid = _password.isNotEmpty;
    return  TextFormField(
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
        labelText:widget.labelText,
        labelStyle:TextStyle(fontSize: 14,fontFamily: "SF",fontWeight: FontWeight.w400,color: Color(0xff9CA3AF)),
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
    );
  }
}
