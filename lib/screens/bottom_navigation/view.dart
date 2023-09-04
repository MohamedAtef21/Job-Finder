import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobfinder/screens/bottom_navigation/pages/applied.dart';
import 'package:jobfinder/screens/bottom_navigation/pages/home.dart';
import 'package:jobfinder/screens/bottom_navigation/pages/messages.dart';
import 'package:jobfinder/screens/bottom_navigation/pages/profile.dart';
import 'package:jobfinder/screens/bottom_navigation/pages/saved.dart';

class BottomNavigationView extends StatefulWidget {
  const BottomNavigationView({Key? key}) : super(key: key);

  @override
  State<BottomNavigationView> createState() => _BottomNavigationViewState();
}

class _BottomNavigationViewState extends State<BottomNavigationView> {
  List<Widget> pages = [
    HomeView(),
    MessageView(),
    AppliedView(),
    SavedView(),
    ProfileView(),
  ];

  List<String> titles = ["Home", "Messages", "Applied", "Saved", "Profile"];

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentPage],
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 41,
        child: Row(
          children: [
            _ItemBottom(
                title: "Home",
                image: "homec",
                unselectedImage: "home",
                onTap: () {
                  currentPage = 0;
                  setState(() {});
                },
                isSelected: currentPage == 0),
            _ItemBottom(
                title: "Messages",
                image: "messagec",
                unselectedImage: "message",
                onTap: () {
                  currentPage = 1;
                  setState(() {});
                },
                isSelected: currentPage == 1),
            _ItemBottom(
                title: "Applied",
                image: "appliedc",
                unselectedImage: "applied",
                onTap: () {
                  currentPage = 2;
                  setState(() {});
                },
                isSelected: currentPage == 2),
            _ItemBottom(
                title: "Saved",
                image: "savedc",
                unselectedImage: "saved",
                onTap: () {
                  currentPage = 3;
                  setState(() {});
                },
                isSelected: currentPage == 3),
            _ItemBottom(
                title: "Profile",
                image: "profilec",
                unselectedImage: "profile",
                onTap: () {
                  currentPage = 4;
                  setState(() {});
                },
                isSelected: currentPage == 4),
          ],
        ),
      ),
    );
  }
}

class _ItemBottom extends StatelessWidget {
  final String title, image, unselectedImage;
  final VoidCallback onTap;
  final bool isSelected;

  const _ItemBottom(
      {Key? key,
      required this.title,
      required this.image,
      required this.onTap,
      required this.isSelected,
      required this.unselectedImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          color: Colors.transparent,
          child: Padding(
            padding: EdgeInsets.only(top: 8, bottom: 8),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(  isSelected ?
                  "assets/icons/${image}.svg": "assets/icons/${unselectedImage}.svg",
                // color: isSelected ? Theme.of(context).primaryColor : null,
                ),
                Text(
                  title,
                  style: TextStyle(fontSize: 10,fontFamily: "SF",fontWeight: FontWeight.w500,
                    color: isSelected ? Theme.of(context).primaryColor : null,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
