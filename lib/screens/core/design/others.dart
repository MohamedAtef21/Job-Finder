import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class OthersView extends StatelessWidget {
  final String title;
  const OthersView({Key? key, required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(start: 24,end: 24),
      child:  Column(
        children: [
          SizedBox(
            height: 49.h,
            child: Row(
              children: [
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
      )
    );
  }
}

