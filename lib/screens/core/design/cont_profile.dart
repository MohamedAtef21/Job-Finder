import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileDataView extends StatelessWidget {
  final String title;
  const ProfileDataView({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 55.h,
      width: 327.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(color: const Color(0xffD1D5DB))
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.only(top: 17,start: 12,bottom: 17),
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            fontFamily: "SF",
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
