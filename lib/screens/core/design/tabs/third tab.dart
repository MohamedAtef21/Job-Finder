import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class PeopleView extends StatefulWidget {
  const PeopleView({Key? key}) : super(key: key);

  @override
  State<PeopleView> createState() => _PeopleViewState();
}

class _PeopleViewState extends State<PeopleView> {

  List<String> images = [
    "employee1",
    "employee2",
    "employee3",
    "employee4",
    "employee5",
    "employee6"
  ];
  List<String> name = [
    "Dimas Adi Saputro",
    "Syahrul Ramadhani",
    "Farrel Daniswara",
    "Azzahra Farrelika",
    "Dimas Adi Saputro",
    "Ferdi Saputra",
  ];

  List<String> title = [
    "Senior UI/UX Designer at Twitter",
    "Senior UI/UX Designer at Twitter",
    "Senior UI/UX Designer at Twitter",
    "UI/UX Designer at Twitter",
    "UI/UX Designer at Twitter",
    "UI/UX Designer at Twitter",
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "6 Employees For",
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: "SF",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  Text(
                    "UI/UX Design",
                    style: TextStyle(
                        fontSize: 12,
                        fontFamily: "Sf",
                        fontWeight: FontWeight.w400,
                        color: Color(0xff6B7280)),
                  ),
                ],
              ),
              Chip(
                label: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "UI/UX Designer",
                      style: TextStyle(
                          fontSize: 12,
                          fontFamily: "Sf",
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    SvgPicture.asset("assets/icons/arrow_down.svg"),
                  ],
                ),
                backgroundColor: Colors.transparent,
                side: BorderSide(color: Color(0xffD1D5DB)),
              ),
            ],
          ),
          SizedBox(height: 24.h),
          SizedBox(
            height: 500.h,
            child: ListView.separated(
                itemBuilder: (context, index) => _ItemChat(image: images[index], name: name[index], title: title[index]),
                separatorBuilder: (context, index) => Column(
                  children: [
                    Container(
                      height: 2,
                      color: Color(0xffE5E7EB),
                    ),
                    SizedBox(height: 16.h,),
                  ],
                ),
                itemCount: name.length),
          )
        ],
      ),
    );
  }
}

class _ItemChat extends StatelessWidget {
  late String image, name, title;

  _ItemChat({
    required this.image,
    required this.name,
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage("assets/images/${image}.png"),
        ),
        SizedBox(width: 12.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: "SF",
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 4.h,
              ),
              Text(
                title,
                style: TextStyle(
                    fontSize: 12,
                    fontFamily: "SF",
                    fontWeight: FontWeight.w400,
                    color: Color(0xff6B7280)),
              ),
            ],
          ),
        ),
       Column(
         crossAxisAlignment: CrossAxisAlignment.end,
         children: [
           Text(
             "Work during",
             style: TextStyle(
                 fontSize: 12,
                 fontFamily: "SF",
                 fontWeight: FontWeight.w400,
                 color: Color(0xff6B7280)),
           ),
           SizedBox(
             height: 2.h,
           ),
           Text(
             "5 Years",
             style: TextStyle(
                 fontSize: 12,
                 fontFamily: "SF",
                 fontWeight: FontWeight.w400,
                 color: Color(0xff3366FF)),
           ),
         ],
       )
      ],
    );
  }
}
