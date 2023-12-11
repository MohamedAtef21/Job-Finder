import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CVUploadedView extends StatelessWidget {
  const CVUploadedView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 74.h,
      width: 327.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(
          color: const Color(0xffD1D5DB),
        ),
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.only(start: 16),
        child: Row(
          children: [
            SvgPicture.asset("assets/icons/pdf.svg"),
            SizedBox(width: 14.w),
            Padding(
              padding: const EdgeInsetsDirectional.only(top: 17),
              child: Column(
                children: [
                  const Text(
                    "Rafif Dian.CV",
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: "SF",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 4.h),
                  const Text(
                    "CV.pdf 300KB",
                    style: TextStyle(
                      fontSize: 12,
                      fontFamily: "SF",
                      fontWeight: FontWeight.w400,
                      color: Color(0xff6B7280),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 109.w),
            SvgPicture.asset("assets/icons/edit.svg"),
            SizedBox(width: 8.w),
            SvgPicture.asset("assets/icons/remove.svg"),
          ],
        ),
      ),
    );
  }
}
