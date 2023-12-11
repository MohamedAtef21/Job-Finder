import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GeneralProView extends StatelessWidget {
  final String image,title;
  const GeneralProView({Key? key, required this.image, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(start: 24,end: 24),
      child: Column(
        children: [
          SizedBox(
            height: 49.h,
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: const Color(0xffD6E4FF),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset("assets/images/$image.png",height: 20.h,width: 20.w,)
                        ],
                      ),
                    ),
                    SizedBox(width: 12.w),
                    Expanded(
                      child: Text(
                        title,
                        style: const TextStyle(
                          fontSize: 16,
                          fontFamily: "SF",
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SvgPicture.asset("assets/icons/arrow_right.svg")
                  ],
                ),
              ],
            ),
          ),
          Column(
            children: [
              Container(
                height: 2,
                color: const Color(0xffE5E7EB),
              ),
              SizedBox(height: 16.h,),
            ],
          ),
        ],
      ),
    );
  }
}

