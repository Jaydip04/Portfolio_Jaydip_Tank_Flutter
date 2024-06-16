import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'constants.dart';
import 'contact_page.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;

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
                child: Padding(
                  padding: EdgeInsets.only(bottom: 20, left: 8, right: 8),
                  child: Column(
                    children: [
                      Center(
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
                                    "A Little Bit \nAbout Me",
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
                                    "Who I am and what I do.",
                                    style: TextStyle(
                                      color: Constants.very_light_gray,
                                      fontSize: 16,
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
                                  height: 50,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(left: 18),
                                      child: Card(
                                        elevation: 5,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        child: Image.asset(
                                          width: 250,
                                          height: 322,
                                          "assets/my_photo.jpg",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 60,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 14),
                                  child: Text(
                                    "Who I am",
                                    style: TextStyle(
                                      color: Constants.text_light_black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 14),
                                  child: Text(
                                    "I’m Jaydip a multi-disciplinary front-end \nengineer, back-end engineer and UI/UX \ndesigner based in ahmedabad, gujarat, India.",
                                    style: TextStyle(
                                      color: Constants.text_light_gray,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                      height: 1.5,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 50,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 14),
                                  child: Text(
                                    "What I Do",
                                    style: TextStyle(
                                      color: Constants.text_light_black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 14),
                                  child: Text(
                                    "Highly skilled Android developer with 1 year of experience in designing and implementing mobile applications. Proficient in Java and Kotlin, with a strong understanding of Android SDK, RESTful APIs, and UI/UX principles. Seeking to leverage expertise in developing innovative and user-centric Android applications within a dynamic team environment",
                                    style: TextStyle(
                                      color: Constants.text_light_gray,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                      height: 1.5,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 50,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 14),
                                  child: RichText(
                                    text: TextSpan(
                                      style: TextStyle(
                                        color: Constants.text_light_gray,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                      children: <TextSpan>[
                                        TextSpan(
                                            text:
                                                'Feel free to reach out via '),
                                        TextSpan(
                                            text: 'E-mail',
                                            style: TextStyle(
                                              color: Constants.text_light_black,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                              decoration:
                                                  TextDecoration.underline,
                                              height: 1.5,
                                            ),
                                            recognizer: TapGestureRecognizer()
                                              ..onTap = () {
                                                String? encodeQueryParameters(
                                                    Map<String, String>
                                                        params) {
                                                  return params.entries
                                                      .map((MapEntry<String,
                                                                  String>
                                                              e) =>
                                                          '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
                                                      .join('&');
                                                }

                                                final Uri emailLaunchUri = Uri(
                                                  scheme: 'mailto',
                                                  path:
                                                      'jaydiptank2004@gmail.com',
                                                  query:
                                                      encodeQueryParameters(<String,
                                                          String>{
                                                    'subject': '',
                                                  }),
                                                );

                                                launchUrl(emailLaunchUri);
                                              }),
                                        TextSpan(text: ', '),
                                        TextSpan(
                                            text: 'Phone',
                                            style: TextStyle(
                                              color: Constants.text_light_black,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                              decoration:
                                                  TextDecoration.underline,
                                              height: 1.5,
                                            ),
                                            recognizer: TapGestureRecognizer()
                                              ..onTap = () {
                                                final call = Uri.parse(
                                                    'tel:+91 7623047611');
                                                launchUrl(call);
                                              }),
                                        TextSpan(text: ', or message on '),
                                        TextSpan(
                                            text: 'Whatsapp.',
                                            style: TextStyle(
                                              color: Constants.text_light_black,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                              decoration:
                                                  TextDecoration.underline,
                                              height: 1.5,
                                            ),
                                            recognizer: TapGestureRecognizer()
                                              ..onTap = () {
                                                String url =
                                                    "https://wa.me/+917623047611/?text=Hello";
                                                launch(url);
                                              }),
                                        TextSpan(
                                            text:
                                                ' Want to see where I’ve worked? Check out my '),
                                        TextSpan(
                                            text: 'Resume',
                                            style: TextStyle(
                                              color: Constants.text_light_black,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                              decoration:
                                                  TextDecoration.underline,
                                              height: 1.5,
                                            ),
                                            recognizer: TapGestureRecognizer()
                                              ..onTap = () {
                                                var url =
                                                    "https://drive.google.com/drive/folders/1KpykSW7yWam6Zkw4S4fvSfCK8damboHU";
                                                launch(
                                                  url,
                                                  headers: {
                                                    "Content-Type":
                                                        "application/pdf",
                                                    "Content-Disposition":
                                                        "inline"
                                                  },
                                                );
                                              }),
                                        TextSpan(
                                            text: ', or Connect with me on '),
                                        TextSpan(
                                            text: 'LinkedIn.',
                                            style: TextStyle(
                                              color: Constants.text_light_black,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                              decoration:
                                                  TextDecoration.underline,
                                            ),
                                            recognizer: TapGestureRecognizer()
                                              ..onTap = () {
                                                String url =
                                                    "https://www.linkedin.com/feed/";
                                                launch(url);
                                              }),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 70,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, right: 10),
                                      child: ElevatedButton.icon(
                                        icon: Image.asset("assets/contact.png",
                                            height: 20, width: 25),
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
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
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
