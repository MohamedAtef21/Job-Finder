import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobfinder/screens/bottom_navigation/view.dart';
import 'package:jobfinder/screens/core/logic/helper_method.dart';
import 'package:jobfinder/screens/splachscreen/view.dart';

void main() {
  runApp(const MainPage());
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) {
        return MaterialApp(
          title: "Job Find",
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            fontFamily: "SF",
            primarySwatch: getMaterialColor(Color(0xff3366FF)),
          ),
          home: Scaffold(
            body: PageView(
              children: [
                SplachScreenView(),
                //BottomNavigationView(),
              ],
            ),
          ),
        );
      },
    );
  }
}