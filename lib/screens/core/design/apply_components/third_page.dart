import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ThirdPageView extends StatelessWidget {
  const ThirdPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Upload portfolio",
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
        Row(
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
        Container(
          height: 74.h,
          width: 327.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            border: Border.all(
              color: Color(0xffD1D5DB),
            ),
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.only(start: 16),
            child: Row(
              children: [
                SvgPicture.asset("assets/icons/pdf.svg"),
                SizedBox(width: 14.w),
                Padding(
                  padding: EdgeInsetsDirectional.only(top: 17),
                  child: Column(
                    children: [
                      Text(
                        "Rafif Dian.CV",
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: "SF",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 4.h),
                      Text(
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
        ),
        SizedBox(height: 20.h),
        Text(
          "Other File",
          style: TextStyle(
              fontSize: 16,
              fontFamily: "SF",
              fontWeight: FontWeight.w500,
              color: Color(0xff111827)),
        ),
        SizedBox(height: 12.h),
        Container(
          height: 221.h,
          width: 327.w,
          decoration: BoxDecoration(
            color: Color(0xffECF2FF),
            borderRadius: BorderRadius.circular(8.r),
            border: Border.all(
              color: Color(0xff3366FF),
            ),
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.only(top: 28,start: 16,end: 16),
            child: Column(
              children: [
                SvgPicture.asset("assets/icons/upload.svg"),
                SizedBox(height: 16.h),
                Text(
                  "Upload your other file",
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: "SF",
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 8.h),
                Text(
                  "Max. file size 10 MB",
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: "SF",
                    fontWeight: FontWeight.w400,
                    color: Color(0xff6B7280),
                  ),
                ),
                SizedBox(height: 24.h),
                SizedBox(
                  height: 40.h,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Color(0xffD6E4FF),
                      ),
                      shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(1000.r),
                          side: BorderSide(
                            color: Color(0xff3366FF),
                          ),
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset("assets/icons/export.svg"),
                        SizedBox(width: 10.w),
                        Text(
                          "Add file",
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: "Sf",
                            fontWeight: FontWeight.w500,
                            color: Color(0xff3366FF),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
