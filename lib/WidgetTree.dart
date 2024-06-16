import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfoliojaydiptankflutter/projects_page.dart';
import 'package:portfoliojaydiptankflutter/setting_page.dart';
import 'package:portfoliojaydiptankflutter/skill_page.dart';

import 'constants.dart';
import 'contact_page.dart';
import 'education_page.dart';
import 'home_page.dart';

class WidgetTree extends StatefulWidget {
  const WidgetTree({super.key});

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: currentIndex == 0
          ? Home()
          : currentIndex == 1
          ? Education()
          : currentIndex == 2
          ? Skill()
          : currentIndex == 3
          ? Project()
          : currentIndex == 4
          ? Contact()
          : Home(),
      bottomNavigationBar: CurvedNavigationBar(
        index: currentIndex,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 300),
        color: Constants.card_light_gray_navigation,
        backgroundColor: Colors.transparent,
        items: <Widget>[
          Image.asset(
            'assets/bottom_navigation_icon/home.png',
            color: Colors.white,
            height: 28,
            width: 28,
          ),
          Image.asset(
            'assets/bottom_navigation_icon/college_graduation.png',
            color: Colors.white,
            height: 30,
            width:30,
          ),
          Image.asset(
            'assets/bottom_navigation_icon/skills.png',
            color: Colors.white,
            height: 28,
            width: 28,
          ),
          Image.asset(
            'assets/bottom_navigation_icon/project.png',
            color: Colors.white,
            height: 30,
            width: 30,
          ),
          Image.asset(
            'assets/bottom_navigation_icon/customer_service.png',
            color: Colors.white,
            height: 32,
            width: 32,
          ),
        ],
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}