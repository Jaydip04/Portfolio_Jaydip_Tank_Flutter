import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfoliojaydiptankflutter/contact_page.dart';
import 'package:url_launcher/url_launcher.dart';
import 'constants.dart';

class Project extends StatefulWidget {
  const Project({super.key});

  @override
  State<Project> createState() => _ProjectState();
}

class _ProjectState extends State<Project> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                              "Projects",
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
                              "Projects and ideas I’ve worked on",
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
                            height: 40,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 5, right: 5),
                                width: 380,
                                child: Card(
                                  color: Constants.card_light_gray,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(20),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Container(
                                                  width: 70,
                                                  height: 70,
                                                  child: Icon(Icons.message,
                                                      color: Constants
                                                          .my_secondary,
                                                      size: 70),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  width: 225,
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        "Easy Chat",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w800,
                                                            fontSize: 20,
                                                            color:
                                                                Colors.black),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  width: 330,
                                                  child: Column(
                                                    children: [
                                                      Text(
                                                        "Develop a clean and intuitive chat interface where users can send and receive messages. implement real-time messaging functionality to enable instant communication between users. Enable users to update their profile information, such as profile picture or status message.",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontSize: 15,
                                                            color: Constants
                                                                .text_light_gray),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                ElevatedButton(
                                                  style: ElevatedButton.styleFrom(
                                                      elevation: 0,
                                                      backgroundColor: Constants
                                                          .card_light_gray,
                                                      padding: EdgeInsets.only(
                                                          left: 0)),
                                                  onPressed: () {
                                                    var url =
                                                        "https://drive.google.com/drive/folders/1uTeXcoIb4aHOAfa_2u7L-vBAdSHgPdOQ?usp=drive_link";
                                                    launch(url);
                                                  },
                                                  child: Container(
                                                    width: 150,
                                                    height: 24,
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: <Widget>[
                                                        Text(
                                                          'Download App',
                                                          style: TextStyle(
                                                            fontSize: 18,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            color: Constants
                                                                .text_light_black,
                                                          ),
                                                        ),
                                                        Icon(
                                                          Icons.arrow_forward,
                                                          color: Constants
                                                              .text_light_black,
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 5, right: 5),
                                width: 380,
                                child: Card(
                                  color: Constants.card_light_gray,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(20),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Card(
                                                  color: Colors.black,
                                                  elevation: 5,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                  ),
                                                  child: Container(
                                                    width: 70,
                                                    height: 70,
                                                    padding: EdgeInsets.all(10),
                                                    child: Image.asset(
                                                        "assets/project_image/portfolio_app_logo.png"),
                                                  ),
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  width: 225,
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        "Jaydip Tank - Portfolio \nAndroid",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w800,
                                                            fontSize: 20,
                                                            color:
                                                                Colors.black),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  width: 330,
                                                  child: Column(
                                                    children: [
                                                      Text(
                                                        "Simple Portfolio App - Designed for simplicity and clarity with a straightforward user interface. Easily showcase your skills in a dedicated section. Highlight your projects with brief descriptions.Cleanly presented details about your academic journey create a foundation for your professional story.",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontSize: 15,
                                                            color: Constants
                                                                .text_light_gray),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                ElevatedButton(
                                                  style: ElevatedButton.styleFrom(
                                                      elevation: 0,
                                                      backgroundColor: Constants
                                                          .card_light_gray,
                                                      padding: EdgeInsets.only(
                                                          left: 0)),
                                                  onPressed: () {
                                                    var url =
                                                        "https://drive.google.com/drive/folders/1GODXXCJU1g_Ev1N1a0EYEDKQjC-7e43B?usp=drive_link";
                                                    launch(url);
                                                  },
                                                  child: Container(
                                                    width: 150,
                                                    height: 24,
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: <Widget>[
                                                        Text(
                                                          'Download App',
                                                          style: TextStyle(
                                                            fontSize: 18,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            color: Constants
                                                                .text_light_black,
                                                          ),
                                                        ),
                                                        Icon(
                                                          Icons.arrow_forward,
                                                          color: Constants
                                                              .text_light_black,
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 5, right: 5),
                                width: 380,
                                child: Card(
                                  color: Constants.card_light_gray,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(20),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Container(
                                                  width: 70,
                                                  height: 70,
                                                  padding: EdgeInsets.all(10),
                                                  child: Image.asset(
                                                      "assets/project_image/collage_app_logo.jpg"),
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  width: 225,
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        "Admin Collage App",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w800,
                                                            fontSize: 20,
                                                            color:
                                                                Colors.black),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  width: 330,
                                                  child: Column(
                                                    children: [
                                                      Text(
                                                        "If you're looking for a simple text-based collage app with both an admin interface, you may need a more customized solution Add, edit, or remove faculty details. Add or remove notices. Image show full mode in galley part",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontSize: 15,
                                                            color: Constants
                                                                .text_light_gray),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                ElevatedButton(
                                                  style: ElevatedButton.styleFrom(
                                                      elevation: 0,
                                                      backgroundColor: Constants
                                                          .card_light_gray,
                                                      padding: EdgeInsets.only(
                                                          left: 0)),
                                                  onPressed: () {
                                                    var url =
                                                        "https://drive.google.com/drive/folders/1aAc45aT6xva54qRcpFa2tc5IPNKdYGha?usp=drive_link";
                                                    launch(url);
                                                  },
                                                  child: Container(
                                                    width: 150,
                                                    height: 24,
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: <Widget>[
                                                        Text(
                                                          'Download App',
                                                          style: TextStyle(
                                                            fontSize: 18,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            color: Constants
                                                                .text_light_black,
                                                          ),
                                                        ),
                                                        Icon(
                                                          Icons.arrow_forward,
                                                          color: Constants
                                                              .text_light_black,
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 5, right: 5),
                                width: 380,
                                child: Card(
                                  color: Constants.card_light_gray,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(20),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Container(
                                                  width: 70,
                                                  height: 70,
                                                  padding: EdgeInsets.all(10),
                                                  child: Image.asset(
                                                      "assets/project_image/collage_app_logo.jpg"),
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  width: 225,
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        "User Collage App",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w800,
                                                            fontSize: 20,
                                                            color:
                                                                Colors.black),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  width: 330,
                                                  child: Column(
                                                    children: [
                                                      Text(
                                                        "If you're looking for a simple text-based collage app with both an user interface, you may need a more customized solution.Each step can be broken down further into more detailed tasks based on the specific requirements of your application.",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontSize: 15,
                                                            color: Constants
                                                                .text_light_gray),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                ElevatedButton(
                                                  style: ElevatedButton.styleFrom(
                                                      elevation: 0,
                                                      backgroundColor: Constants
                                                          .card_light_gray,
                                                      padding: EdgeInsets.only(
                                                          left: 0)),
                                                  onPressed: () {
                                                    var url =
                                                        "https://drive.google.com/drive/folders/1lGpIDPCaPthVzcPKUgjirBlAGn5bdQCN?usp=drive_link";
                                                    launch(url);
                                                  },
                                                  child: Container(
                                                    width: 150,
                                                    height: 24,
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: <Widget>[
                                                        Text(
                                                          'Download App',
                                                          style: TextStyle(
                                                            fontSize: 18,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            color: Constants
                                                                .text_light_black,
                                                          ),
                                                        ),
                                                        Icon(
                                                          Icons.arrow_forward,
                                                          color: Constants
                                                              .text_light_black,
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 5, right: 5),
                                width: 380,
                                child: Card(
                                  color: Constants.card_light_gray,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(20),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Card(
                                                  color: Colors.white,
                                                  elevation: 5,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                  ),
                                                  child: Container(
                                                    padding: EdgeInsets.all(10),
                                                    child: Image.asset(
                                                      "assets/project_image/milk_counter_app_logo.png",
                                                      fit: BoxFit.cover,
                                                      width: 50,
                                                      height: 50,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  width: 225,
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        "Milk Counter App - \nMilk Man",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w800,
                                                            fontSize: 20,
                                                            color:
                                                                Colors.black),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  width: 330,
                                                  child: Column(
                                                    children: [
                                                      Text(
                                                        "Creating a milk counter app for both the MilkMan and the customer involves designing a user-friendly interface for tracking and managing milk deliveries. Add, edit, or remove Customers details. Create an account with basic details.Profile management with contact information and delivery preferences.",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontSize: 15,
                                                            color: Constants
                                                                .text_light_gray),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                ElevatedButton(
                                                  style: ElevatedButton.styleFrom(
                                                      elevation: 0,
                                                      backgroundColor: Constants
                                                          .card_light_gray,
                                                      padding: EdgeInsets.only(
                                                          left: 0)),
                                                  onPressed: () {
                                                    var url =
                                                        "https://github.com/Jaydip04/Milk-Counter-APK/blob/master/Milk%20Couter%20For%20Milk%20Man/app-release.apk";
                                                    launch(url);
                                                  },
                                                  child: Container(
                                                    width: 150,
                                                    height: 24,
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: <Widget>[
                                                        Text(
                                                          'Download App',
                                                          style: TextStyle(
                                                            fontSize: 18,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            color: Constants
                                                                .text_light_black,
                                                          ),
                                                        ),
                                                        Icon(
                                                          Icons.arrow_forward,
                                                          color: Constants
                                                              .text_light_black,
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 5, right: 5),
                                width: 380,
                                child: Card(
                                  color: Constants.card_light_gray,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(20),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Card(
                                                  color: Colors.white,
                                                  elevation: 5,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                  ),
                                                  child: Container(
                                                    width: 70,
                                                    height: 70,
                                                    padding: EdgeInsets.all(10),
                                                    child: Image.asset(
                                                      "assets/project_image/milk_counter_app_logo.png",
                                                      fit: BoxFit.cover,
                                                      width: 50,
                                                      height: 50,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  width: 225,
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        "Milk Counter App - \nCustomer",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w800,
                                                            fontSize: 20,
                                                            color:
                                                                Colors.black),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  width: 330,
                                                  child: Column(
                                                    children: [
                                                      Text(
                                                        "Creating a milk counter app for both the MilkMan and the customer involves designing a user-friendly interface for tracking and managing milk deliveries. Add, edit, or remove Customers details. Create an account with basic details.Profile management with contact information and delivery preferences.",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontSize: 15,
                                                            color: Constants
                                                                .text_light_gray),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                ElevatedButton(
                                                  style: ElevatedButton.styleFrom(
                                                      elevation: 0,
                                                      backgroundColor: Constants
                                                          .card_light_gray,
                                                      padding: EdgeInsets.only(
                                                          left: 0)),
                                                  onPressed: () {
                                                    var url =
                                                        "https://drive.google.com/drive/folders/1to9--SWDZgGfZCq7zvPnp4Ac6trmFoen?usp=drive_link";
                                                    launch(url);
                                                  },
                                                  child: Container(
                                                    width: 150,
                                                    height: 24,
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: <Widget>[
                                                        Text(
                                                          'Download App',
                                                          style: TextStyle(
                                                            fontSize: 18,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            color: Constants
                                                                .text_light_black,
                                                          ),
                                                        ),
                                                        Icon(
                                                          Icons.arrow_forward,
                                                          color: Constants
                                                              .text_light_black,
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 5, right: 5),
                                width: 380,
                                child: Card(
                                  color: Constants.card_light_gray,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(20),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Card(
                                                  color: Colors.black,
                                                  elevation: 5,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                  ),
                                                  child: Container(
                                                    width: 70,
                                                    height: 70,
                                                    padding: EdgeInsets.all(10),
                                                    child: Image.asset(
                                                        "assets/project_image/portfolio_app_logo.png"),
                                                  ),
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  width: 225,
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        "Jaydip Tank - Portfolio \nFlutter",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w800,
                                                            fontSize: 20,
                                                            color:
                                                                Colors.black),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  width: 330,
                                                  child: Column(
                                                    children: [
                                                      Text(
                                                        "Simple Portfolio App - Designed for simplicity and clarity with a straightforward user interface. Easily showcase your skills in a dedicated section. Highlight your projects with brief descriptions.Cleanly presented details about your academic journey create a foundation for your professional story.",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontSize: 15,
                                                            color: Constants
                                                                .text_light_gray),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                ElevatedButton(
                                                  style: ElevatedButton.styleFrom(
                                                      elevation: 0,
                                                      backgroundColor: Constants
                                                          .card_light_gray,
                                                      padding: EdgeInsets.only(
                                                          left: 0)),
                                                  onPressed: () {
                                                    var url =
                                                        "https://drive.google.com/drive/folders/1Ceuodna7Uf1ddocpdNq65VCLQbOTRFPf?usp=drive_link";
                                                    launch(url);
                                                  },
                                                  child: Container(
                                                    width: 150,
                                                    height: 24,
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: <Widget>[
                                                        Text(
                                                          'Download App',
                                                          style: TextStyle(
                                                            fontSize: 18,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            color: Constants
                                                                .text_light_black,
                                                          ),
                                                        ),
                                                        Icon(
                                                          Icons.arrow_forward,
                                                          color: Constants
                                                              .text_light_black,
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 5, right: 5),
                                width: 380,
                                child: Card(
                                  color: Constants.card_light_gray,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Container(
                                    padding: EdgeInsets.only(
                                        left: 20,
                                        right: 20,
                                        top: 50,
                                        bottom: 50),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 70,
                                          height: 70,
                                          padding: EdgeInsets.all(10),
                                          child: Image.asset(
                                              "assets/project_image/start.png"),
                                        ),
                                        SizedBox(
                                          height: 30,
                                        ),
                                        Text(
                                          "YOUR PROJECT GOES HERE",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w800,
                                              fontSize: 20,
                                              color:
                                                  Constants.text_light_black),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Text(
                                          "Let’s turn your idea into a visual reality",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 15,
                                              color: Constants.text_light_gray),
                                        ),
                                        SizedBox(
                                          height: 80,
                                        ),
                                        ElevatedButton.icon(
                                          icon: Image.asset(
                                              "assets/contact.png",
                                              height: 20,
                                              width: 25),
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        Contact()));
                                          },
                                          label: Text(
                                            "Get In Touch",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                letterSpacing: 1),
                                          ),
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.black,
                                            minimumSize: Size(216, 60),
                                            elevation: 5,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
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
}
