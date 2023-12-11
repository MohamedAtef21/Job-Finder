
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:jobfinder/screens/core/design/main_button.dart';

import '../core/design/cont_profile.dart';

class EditProfileView extends StatefulWidget {
  const EditProfileView({Key? key}) : super(key: key);

  @override
  State<EditProfileView> createState() => _EditProfileViewState();
}

class _EditProfileViewState extends State<EditProfileView> {
  String? imagePath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Edit Profile",
          style: TextStyle(
              fontSize: 20,
              fontFamily: "SF",
              fontWeight: FontWeight.w500,
              color: Color(0xff111827)),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: SvgPicture.asset("assets/icons/arrow_left.svg"),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsetsDirectional.only(start: 24, end: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 36.h),
            Center(
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 45.r,
                    child: Stack(
                      children: [
                        // if(imagePath!=null)
                        // Image.file(
                        // File(imagePath!),
                        //   height: 90,
                        //   width: 90,
                        //   fit: BoxFit.scaleDown,
                        // ),
                        Center(
                          child: Image.asset(
                            "assets/images/profile_pic.png",
                            height: 90,
                            width: 90,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Center(
                          child: IconButton(
                            onPressed: () async {
                              var image = await ImagePicker.platform
                                  .getImage(source: ImageSource.gallery);
                              if (image != null) {
                                imagePath = image.path;
                                setState(() {});
                              }
                            },
                            icon: SvgPicture.asset("assets/icons/camera.svg",clipBehavior: Clip.antiAlias,),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8.h),
                  const Text(
                    "Change  Photo",
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: "SF",
                      fontWeight: FontWeight.w500,
                      color: Color(0xff3366FF),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 25.h),
            const Text(
              "Name",
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: "SF",
                  fontWeight: FontWeight.w500,
                  color: Color(0xff9CA3AF)),
            ),
            SizedBox(height: 6.h),
            const ProfileDataView(title: "Mohamed Atef"),
            SizedBox(height: 16.h),
            const Text(
              "Bio",
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: "SF",
                  fontWeight: FontWeight.w500,
                  color: Color(0xff9CA3AF)),
            ),
            SizedBox(height: 6.h),
            const ProfileDataView(title: "Flutter Developer"),
            SizedBox(height: 16.h),
            const Text(
              "Address",
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: "SF",
                  fontWeight: FontWeight.w500,
                  color: Color(0xff9CA3AF)),
            ),
            SizedBox(height: 6.h),
            const ProfileDataView(title: "New Nozha,Cairo"),
            SizedBox(height: 16.h),
            const Text(
              "No.Handphone",
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: "SF",
                  fontWeight: FontWeight.w500,
                  color: Color(0xff9CA3AF)),
            ),
            SizedBox(height: 6.h),
            IntlPhoneField(
              decoration: InputDecoration(
                hintText: 'Phone Number',
                hintStyle: const TextStyle(
                    fontSize: 14,
                    fontFamily: "SF",
                    fontWeight: FontWeight.w400,
                    color: Color(0xff9CA3AF)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.r),
                ),
              ),
              initialCountryCode: 'EG',
            ),
            SizedBox(height: 83.h),
            ButtonView(
              textInput: "Save",
              onClick: () {},
            ),
          ],
        ),
      ),
    );
  }
}
