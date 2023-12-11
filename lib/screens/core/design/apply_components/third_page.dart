import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../cv_uploaded.dart';
import '../upload.dart';

class ThirdPageView extends StatelessWidget {
  const ThirdPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Upload portfolio",
          style: TextStyle(
              fontSize: 20, fontFamily: "SF", fontWeight: FontWeight.w500),
        ),
        SizedBox(height: 4.h),
        const Text(
          "Fill in your bio data correctly",
          style: TextStyle(
            fontSize: 14,
            fontFamily: "SF",
            fontWeight: FontWeight.w400,
            color: Color(0xff6B7280),
          ),
        ),
        SizedBox(height: 28.h),
        const Row(
          children: [
            Text(
              "Upload CV",
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: "SF",
                  fontWeight: FontWeight.w500,
                  color: Color(0xff111827)),
            ),
            Text(
              "*",
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: "SF",
                  fontWeight: FontWeight.w500,
                  color: Color(0xffFF472B)),
            ),
          ],
        ),
        SizedBox(height: 12.h),
        const CVUploadedView(),
        SizedBox(height: 20.h),
        const Text(
          "Other File",
          style: TextStyle(
              fontSize: 16,
              fontFamily: "SF",
              fontWeight: FontWeight.w500,
              color: Color(0xff111827)),
        ),
        SizedBox(height: 12.h),
        const UploadFileView(),
      ],
    );
  }
}
