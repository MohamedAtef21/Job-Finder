import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobfinder/screens/core/design/apply_components/first_page.dart';
import 'package:jobfinder/screens/core/design/apply_components/second_page.dart';
import 'package:jobfinder/screens/core/design/apply_components/third_page.dart';

class ComponentsView extends StatefulWidget {
  const ComponentsView({Key? key}) : super(key: key);

  @override
  State<ComponentsView> createState() => _ComponentsViewState();
}

class _ComponentsViewState extends State<ComponentsView> {
  int currentPage = 0;

  // Color circleColor = Colors.grey;

  List<Widget> pages = [
    const FirstPageView(),
    const SecondPgaeView(),
    const ThirdPageView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(
          height: 80.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: pages.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsetsDirectional.only(end: index == 2 ? 0 : 110),
                child: CircleAvatar(
                  radius: 22,
                  backgroundColor:
                      Color(index == currentPage ? 0xff387FFB : 0xff9CA3AF),
                  child: Icon(
                    Icons.done,
                    color:
                        Color(index == currentPage ? 0xffFFFFFF : 0xff9CA3AF),
                  ),
                ),
              );
            },
          ),
        ),
        //SizedBox(height: 8.h),
        SizedBox(
          height: 20,
          child: Row(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Biodata",
                style: TextStyle(
                    fontSize: 12,
                    fontFamily: "SF",
                    fontWeight: FontWeight.w400,
                    color: Color(currentPage == 0 ? 0xff3366FF : 0xff111827)),
              ),
              const SizedBox(width: 100),
              Text(
                "Type of work",
                style: TextStyle(
                    fontSize: 12,
                    fontFamily: "SF",
                    fontWeight: FontWeight.w400,
                    color: Color(currentPage == 1 ? 0xff3366FF : 0xff111827)),
              ),
              const SizedBox(width: 75),
              Text(
                "Upload portfolio",
                style: TextStyle(
                    fontSize: 12,
                    fontFamily: "SF",
                    fontWeight: FontWeight.w400,
                    color: Color(currentPage == 2 ? 0xff3366FF : 0xff111827)),
              ),
            ],
          ),
        ),
        SizedBox(height: 32.h),
        Flex(
          direction: Axis.horizontal,
          children: [
            Expanded(
              child: pages[currentPage],
            ),
          ],
        ),
        SizedBox(height: 47.h),
        Padding(
          padding: const EdgeInsetsDirectional.only(start: 24, end: 24),
          child: SizedBox(
            height: 48.h,
            child: ElevatedButton(
              onPressed: () {
                if (currentPage == 2) {
                  //   navigateTo(context, SignUpView());
                } else {
                  currentPage++;
                  setState(() {});
                }
              },
              style: ButtonStyle(
                shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(1000),
                  ),
                ),
              ),
              child: Text(currentPage == 2 ? "Submit" : "Next"),
            ),
          ),
        ),
      ],
    );
  }
}
