import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class EditLanguageView extends StatefulWidget {
  const EditLanguageView({Key? key}) : super(key: key);

  @override
  State<EditLanguageView> createState() => _EditLanguageViewState();
}

List<String> names = [
  "English",
  "Indonesia",
  "Arabic",
  "Chinese",
  "Dutch",
  "French",
  "German",
  "Japanese",
  "Korean",
  "Portuguese"
];

List<String> images = [
  "english",
  "indonesia",
  "arabic",
  "chinese",
  "dutch",
  "french",
  "german",
  "japanese",
  "korean",
  "portuguese"
];

List<String> options = ["option 1", "option 2", "option 3", "option 4"];

class _EditLanguageViewState extends State<EditLanguageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Language",
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
      body: Column(
        children: [
          SizedBox(
            height: 700,
            child: ListView.separated(
              itemBuilder: (context, index) =>
                  _ItemLanguage(image: images[index], name: names[index]),
              separatorBuilder: (context, index) => Column(
                children: [
                  Container(
                    height: 2,
                    color: const Color(0xffE5E7EB),
                  ),
                  SizedBox(height: 20.h),
                ],
              ),
              itemCount: names.length,
            ),
          ),
        ],
      ),
    );
  }
}

class _ItemLanguage extends StatelessWidget {
  late String image, name;

  _ItemLanguage({
    required this.image,
    required this.name,
    Key? key,
  }) : super(key: key);

  String currentOption = options[0];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(start: 24, end: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset("assets/images/$image.png",
                  height: 30.h, width: 30.w, fit: BoxFit.scaleDown),
              SizedBox(width: 12.w),
              Text(
                name,
                style: const TextStyle(
                  fontSize: 16,
                  fontFamily: "SF",
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          //SizedBox(width: 209.w),
          Radio(
            value: options[0],
            groupValue: currentOption,
            onChanged: (value) {
              currentOption = value.toString();
              selectedIndex = options.indexOf(value.toString());
            },
          ),
        ],
      ),
    );
  }
}
