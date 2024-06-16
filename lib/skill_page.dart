import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class Skill extends StatefulWidget {
  const Skill({super.key});

  @override
  State<Skill> createState() => _SkillState();
}

class _SkillState extends State<Skill> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Image.asset("background/main_background.png"),
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/background/main_background.png'),
              fit: BoxFit.fitHeight,
            ),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 60,
              ),
              Container(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 50, bottom: 20),
                    child: Container(
                      width: 390,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 14),
                            child: Text(
                              "Tech Stack",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 48,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 14),
                            child: Text(
                              "The Skill and Software",
                              style: TextStyle(
                                color: Constants.very_light_gray,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Divider(
                            color: Constants.light_gray,
                            thickness: 1,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 14),
                            child: Text(
                              "Skill",
                              style: TextStyle(
                                color: Constants.title_light_gray,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          CommonRow("assets/skill_image/c_lan.png","C (Programming Language)","70%"),
                          SizedBox(
                            height: 20,
                          ),

                          CommonRow("assets/skill_image/cpp_lan.png","CPP","80%"),
                          SizedBox(
                            height: 20,
                          ),

                          CommonRow("assets/skill_image/java_lan.png","Java","75%"),
                          SizedBox(
                            height: 20,
                          ),

                          CommonRow("assets/skill_image/java_lan.png","Core Java","65%"),
                          SizedBox(
                            height: 20,
                          ),

                          CommonRow("assets/skill_image/xml_lan.png","XML","80%"),
                          SizedBox(
                            height: 20,
                          ),

                          CommonRow("assets/skill_image/android_lan.png","Android","80%"),
                          SizedBox(
                            height: 20,
                          ),

                          CommonRow("assets/skill_image/database.png","Firebase Features","80%"),
                          SizedBox(
                            height: 20,
                          ),

                          CommonRow("assets/skill_image/development.png","Android App Devlopment","75%"),
                          SizedBox(
                            height: 20,
                          ),

                          CommonRow("assets/skill_image/problem_solving.png","Problem Solving","73%"),
                          SizedBox(
                            height: 20,
                          ),

                          CommonRow("assets/skill_image/dart_lan.png","Dart","40%"),
                          SizedBox(
                            height: 20,
                          ),

                          CommonRow("assets/skill_image/flutter_lan.png","Flutter","50%"),
                          SizedBox(
                            height: 50,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 14),
                            child: Text(
                              "Software",
                              style: TextStyle(
                                color: Constants.title_light_gray,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),

                          CommonRow("assets/Software/visual_studio.png","Visual Studio","70%"),
                          SizedBox(
                            height: 20,
                          ),

                          CommonRow("assets/Software/android_studio.png","Android Studio","75%"),
                          SizedBox(
                            height: 20,
                          ),

                          CommonRow("assets/Software/github.png","GitHub","60%"),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row CommonRow(imageUrl,languageName,languagePer) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 390,
          child: Card(
            color: Constants.card_light_gray,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                top: 20,
                bottom: 20,
                left: 5,
                right: 5,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 370,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Card(
                                      color: Colors.black,
                                      elevation: 5,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Container(
                                        width: 60,
                                        height: 60,
                                        padding: EdgeInsets.all(10),
                                        child: Image.asset(
                                            imageUrl,),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 230,
                                  child: Row(
                                    children: [
                                      Text(
                                        languageName,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                            color: Colors.black),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Container(
                                    padding: EdgeInsets.only(
                                        top: 5, bottom: 5, left: 12, right: 12),
                                    child: Text(
                                      languagePer,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                          color: Constants.text_light_gray),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
