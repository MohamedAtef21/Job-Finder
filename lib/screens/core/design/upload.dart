import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class UploadFileView extends StatelessWidget {
  const UploadFileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 221.h,
      width: 327.w,
      decoration: BoxDecoration(
        color: const Color(0xffECF2FF),
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(
          color: const Color(0xff3366FF),
        ),
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.only(top: 28,start: 16,end: 16),
        child: Column(
          children: [
            SvgPicture.asset("assets/icons/upload.svg"),
            SizedBox(height: 16.h),
            const Text(
              "Upload your other file",
              style: TextStyle(
                fontSize: 18,
                fontFamily: "SF",
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 8.h),
            const Text(
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
                    const Color(0xffD6E4FF),
                  ),
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(1000.r),
                      side: const BorderSide(
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
                    const Text(
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
    );
  }
}
