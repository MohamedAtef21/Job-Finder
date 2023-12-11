import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RecentJobView extends StatefulWidget {
  final String imageInput,title,desc;
  const RecentJobView({Key? key, required this.imageInput, required this.title, required this.desc}) : super(key: key);

  @override
  State<RecentJobView> createState() => _RecentJobViewState();
}

class _RecentJobViewState extends State<RecentJobView> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 103.h,
      width: 327.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SvgPicture.asset("assets/icons/${widget.imageInput}.svg"),
              SizedBox(width: 16.w,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.title,style: const TextStyle(fontSize: 18,fontFamily: "SF",fontWeight: FontWeight.w500),),
                  SizedBox(height: 4.h,),
                  Text(widget.desc,style: const TextStyle(fontSize: 12,fontFamily: "SF",fontWeight: FontWeight.w400,color: Color(0xff374151)),)
                ],
              ),
              SizedBox(width: 110.w,),
              GestureDetector(
              onTap: (){
                isSelected = ! isSelected;
                setState(() {});
              },
              child: SvgPicture.asset( isSelected ? "assets/icons/savedc.svg" : "assets/icons/saved.svg" ),
              ) ,
            ],
          ),
          SizedBox(height: 16.h,),
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
                child: const Center(child: Text("Remote",style: TextStyle(fontSize: 12,fontFamily: "SF",fontWeight: FontWeight.w400,color: Color(0xff3366FF)),)),
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
              SizedBox(width: 24.w,),
              const Row(
                children: [
                  Text("\$15K",style: TextStyle(fontSize: 20,fontFamily: "SF",fontWeight: FontWeight.w500,color: Color(0xff2E8E18)),),
                  Text("/Month",style: TextStyle(fontSize: 12,fontFamily: "SF",fontWeight: FontWeight.w500,color: Color(0xff6B7280)),),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
