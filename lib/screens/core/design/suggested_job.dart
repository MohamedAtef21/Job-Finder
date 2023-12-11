import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SuggestedJobView extends StatelessWidget {
  const SuggestedJobView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.w,
      height: 183.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        color: const Color(0xff091A7A),
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.only(start: 16,top: 18,end: 16,bottom: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SvgPicture.asset("assets/icons/zoom.svg",),
                SizedBox(width: 18.w,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Product Designer",style: TextStyle(fontSize: 18,fontFamily: "SF",fontWeight: FontWeight.w500,color: Color(0xffFFFFFF)),),
                    SizedBox(height: 4.h,),
                    const Text("Zoom • United States",style: TextStyle(fontSize: 12,fontFamily: "SF",fontWeight: FontWeight.w400,color: Color(0xff9CA3AF)),)
                  ],
                ),
                SizedBox(width: 70.w,),
                SvgPicture.asset("assets/icons/saved.svg",color: Colors.white,)
              ],
            ),
            SizedBox(height: 20.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 82.w,
                  height: 30.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100.r),
                    color: const Color(0xffffffff24).withOpacity(.14),
                  ),
                  child: const Center(child: Text("Fulltime",style: TextStyle(fontSize: 12,fontFamily: "SF",fontWeight: FontWeight.w400,color: Color(0xffFFFFFF)),)),
                ),
                Container(
                  width: 82.w,
                  height: 30.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100.r),
                    color: const Color(0xffffffff24).withOpacity(.14),
                  ),
                  child: const Center(child: Text("Remote",style: TextStyle(fontSize: 12,fontFamily: "SF",fontWeight: FontWeight.w400,color: Color(0xffFFFFFF)),)),
                ),
                Container(
                  width: 82.w,
                  height: 30.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100.r),
                    color: const Color(0xffffffff24).withOpacity(.14),
                  ),
                  child: const Center(child: Text("Design",style: TextStyle(fontSize: 12,fontFamily: "SF",fontWeight: FontWeight.w400,color: Color(0xffFFFFFF)),)),
                ),
              ],
            ),
            SizedBox(height: 20.h,),
            SizedBox(
              height: 32.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Text("\$12K-15K",style: TextStyle(fontSize: 20,fontFamily: "SF",fontWeight: FontWeight.w500,color: Color(0xffFFFFFF)),),
                      Text("/Month",style: TextStyle(fontSize: 12,fontFamily: "SF",fontWeight: FontWeight.w500,color: const Color(0xffFFFFFF).withOpacity(.5)),),
                    ],
                  ),
                  ElevatedButton(onPressed: (){},
                    style: ButtonStyle(
                        shape: MaterialStatePropertyAll(
                            RoundedRectangleBorder(borderRadius: BorderRadius.circular(1000.r))
                        ),
                    ),
                      child: const Text("Apply now",style: TextStyle(fontSize: 12,fontFamily: "SF",fontWeight: FontWeight.w500,color: Color(0xffFFFFFF)),),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
