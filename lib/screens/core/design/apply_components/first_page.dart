import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../text_icon_input.dart';

class FirstPageView extends StatelessWidget {
  const FirstPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Biodata",
          style: TextStyle(
              fontSize: 20, fontFamily: "SF", fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: 4.h,
        ),
        Text(
          "Fill in your bio data correctly",
          style: TextStyle(
            fontSize: 14,
            fontFamily: "SF",
            fontWeight: FontWeight.w400,
            color: Color(0xff6B7280),
          ),
        ),
        SizedBox(
          height: 28.h,
        ),
        Row(
          children: [
            Text(
              "Full Name",
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: "SF",
                  fontWeight: FontWeight.w400,
                  color: Color(0xff111827)
              ),
            ),
            Text("*",style: TextStyle(
                fontSize: 16,
                fontFamily: "SF",
                fontWeight: FontWeight.w400,
                color: Color(0xffFF472B)
            ),
            ),
          ],
        ),
        SizedBox(height: 8.h,),
        TextIconInputView(labelText: "Name", iconPath: "username", obscureText: false, inputType: TextInputType.name),
        SizedBox(height: 20.h,),
        Row(
          children: [
            Text(
              "Email",
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: "SF",
                  fontWeight: FontWeight.w400,
                  color: Color(0xff111827)
              ),
            ),
            Text("*",style: TextStyle(
                fontSize: 16,
                fontFamily: "SF",
                fontWeight: FontWeight.w400,
                color: Color(0xffFF472B)
            ),
            ),
          ],
        ),
        SizedBox(height: 8.h,),
        TextIconInputView(labelText: "Email", iconPath: "mail", obscureText: false, inputType: TextInputType.emailAddress),
        SizedBox(height: 20.h,),
        Row(
          children: [
            Text(
              "No.Handphone",
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: "SF",
                  fontWeight: FontWeight.w400,
                  color: Color(0xff111827)
              ),
            ),
            Text("*",style: TextStyle(
                fontSize: 16,
                fontFamily: "SF",
                fontWeight: FontWeight.w400,
                color: Color(0xffFF472B)
            ),
            ),
          ],
        ),
        SizedBox(height: 8.h,),
        IntlPhoneField(
          decoration: InputDecoration(
            hintText: 'Phone Number',
            hintStyle:TextStyle(fontSize: 14,fontFamily: "SF",fontWeight: FontWeight.w400,color: Color(0xff9CA3AF)),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
            ),
          ),
          initialCountryCode: 'EG',
        )
      ],
    );
  }
}
