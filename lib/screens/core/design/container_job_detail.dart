import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class JobDetailsContView extends StatelessWidget {
  const JobDetailsContView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 220.w,
      height: 148.h,
      child: Column(
        children: [
          SvgPicture.asset("assets/icons/twitter.svg"),
          SizedBox(
            height: 12.h,
          ),
          const Text(
            "Senior UI Designer",
            style: TextStyle(
              fontSize: 20,
              fontFamily: "SF",
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 4.h,
          ),
          const Text(
            "Twitter • Jakarta, Indonesia ",
            style: TextStyle(
              fontSize: 12,
              fontFamily: "SF",
              fontWeight: FontWeight.w400,
              color: Color(0xff374151),
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 72.w,
                height: 26.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.r),
                  color: const Color(0xffD6E4FF),
                ),
                child: const Center(child: Text("Fulltime",style: TextStyle(fontSize: 12,fontFamily: "SF",fontWeight: FontWeight.w400,color: Color(0xff3366FF)),)),
              ),
              Container(
                width: 72.w,
                height: 26.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.r),
                  color: const Color(0xffD6E4FF),
                ),
                child: const Center(child: Text("Onsite",style: TextStyle(fontSize: 12,fontFamily: "SF",fontWeight: FontWeight.w400,color: Color(0xff3366FF)),)),
              ),
              Container(
                width: 72.w,
                height: 26.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.r),
                  color: const Color(0xffD6E4FF),
                ),
                child: const Center(child: Text("Senior",style: TextStyle(fontSize: 12,fontFamily: "SF",fontWeight: FontWeight.w400,color: Color(0xff3366FF)),)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
