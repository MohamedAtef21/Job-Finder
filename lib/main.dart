import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobfinder/screens/bottom_navigation/view.dart';
import 'package:jobfinder/screens/core/logic/helper_method.dart';
import 'package:jobfinder/screens/splachscreen/view.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
            primarySwatch: getMaterialColor(const Color(0xff3366FF)),
          ),
          home: Scaffold(
            body: PageView(
              children: const [
                //SplachScreenView(),
                BottomNavigationView()
              ],
            ),
          ),
        );
      },
    );
  }
}