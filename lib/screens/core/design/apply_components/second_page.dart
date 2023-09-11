import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobfinder/screens/core/design/apply_components/apply_container.dart';

class SecondPgaeView extends StatelessWidget {
  const SecondPgaeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Type of work",
          style: TextStyle(
              fontSize: 20, fontFamily: "SF", fontWeight: FontWeight.w500),
        ),
        SizedBox(height: 4.h),
        Text(
          "Fill in your bio data correctly",
          style: TextStyle(
            fontSize: 14,
            fontFamily: "SF",
            fontWeight: FontWeight.w400,
            color: Color(0xff6B7280),
          ),
        ),
        SizedBox(height: 28.h),
        ApplyContView(title: "Senior UX Designer", content: "CV.pdf . Portfolio.pdf"),
        SizedBox(height: 16.h),
        ApplyContView(title: "Senior UX Designer", content: "CV.pdf . Portfolio.pdf"),
        SizedBox(height: 16.h),
        ApplyContView(title: "Senior UX Designer", content: "CV.pdf . Portfolio.pdf"),
        SizedBox(height: 16.h),
        ApplyContView(title: "Senior UX Designer", content: "CV.pdf . Portfolio.pdf"),
      ],
    );
  }
}
