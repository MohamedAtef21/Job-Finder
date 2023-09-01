import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TextSearchView extends StatelessWidget {
  const TextSearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        filled: true,
        labelText: "Search....",
          fillColor: Colors.white,
          labelStyle: TextStyle(fontSize: 14,fontFamily: "SF",fontWeight: FontWeight.w400,color: Color(0xff9CA3AF)),
        prefixIcon: SvgPicture.asset("assets/icons/search.svg",fit: BoxFit.scaleDown,),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100.r)
        )
      ),
    );
  }
}
