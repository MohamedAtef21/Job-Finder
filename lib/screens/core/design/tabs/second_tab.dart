import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CompanyView extends StatelessWidget {
  const CompanyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 24.h),
          Text("Contact Us",style: TextStyle(fontSize: 14,fontFamily: "SF",fontWeight: FontWeight.w500,),),
          SizedBox(height: 12.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 157.w,
                height: 56.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  border: Border.all(color: Color(0xffD1D5DB))
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.only(top: 8,start: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Email",style: TextStyle(fontSize: 12,fontFamily: "SF",fontWeight: FontWeight.w400,color: Color(0xff9CA3AF,)),),
                      SizedBox(height: 2.h,),
                      Text("twitter@mail.com",style: TextStyle(fontSize: 14,fontFamily: "SF",fontWeight: FontWeight.w500,),)
                    ],
                  ),
                ),
              ),
              SizedBox(width: 13.w),
              Container(
                width: 157.w,
                height: 56.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    border: Border.all(color: Color(0xffD1D5DB))
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.only(top: 8,start: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Website",style: TextStyle(fontSize: 12,fontFamily: "SF",fontWeight: FontWeight.w400,color: Color(0xff9CA3AF,)),),
                      SizedBox(height: 2.h,),
                      Text("https://twitter.com",style: TextStyle(fontSize: 14,fontFamily: "SF",fontWeight: FontWeight.w500,),)
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 24.h),
          Text("About Company",style: TextStyle(fontSize: 14,fontFamily: "SF",fontWeight: FontWeight.w500,),),
          SizedBox(height: 16.h),
          Text("Understanding Recruitment is an award-winning technology, software and digital recruitment consultancy with headquarters in St. Albans, Hertfordshire.We also have a US office in Boston, Massachusetts specialising in working closely with highly skilled individuals seeking their next career move within Next Gen Tech, Backend Engineering, and Artificial Intelligence.We recently celebrated our first decade in business and over the years have been recognised with several industry awards including 'Best Staffing Firm to Work For 2018'​ at the SIA Awards for the third consecutive year and ‘Business of the Year 2017’ at the SME Hertfordshire Business Awards.Our teams of specialists operate across all areas of Technology and Digital, including Java, JavaScript, Python, .Net, DevOps & SRE, SDET, Artificial Intelligence, Machine Learning, AI, Digital, Quantum Computing, Hardware Acceleration, Digital, Charity, Fintech, and the Public Sector.",
          style: TextStyle(fontSize: 14,fontFamily: "SF",fontWeight: FontWeight.w400,color: Color(0xff4B5563)),textAlign: TextAlign.start,),
        ],
      ),
    );
  }
}
