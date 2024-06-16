import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class Education extends StatefulWidget {
  const Education({super.key});

  @override
  State<Education> createState() => _EducationState();
}

class _EducationState extends State<Education> {
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
                              "Education",
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
                              "Timeline of my education",
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
                          CommonRow("SSC","Shree D.A. Vidhya Mandir, Dhandhuka","Pass Out : 2019","55.33%"),

                          SizedBox(
                            height: 15,
                          ),

                          CommonRow("HSC","Shree D.A. Vidhya Mandir, Dhandhuka","Pass Out : 2021","61.57%"),

                          SizedBox(
                            height: 15,
                          ),

                          CommonRow("B.SC. IT","Shree Swami Vivekanand Collage, \nSurendranagar","Pass Out : 2024","79.00%"),
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
  Row CommonRow(streamName,schoolName,passOutYear,percentage){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(left: 10, right: 10),
          width: 370,
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
                crossAxisAlignment:
                CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(
                        left: 20, right: 20),
                    width: 350,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment:
                          MainAxisAlignment
                              .spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment:
                              CrossAxisAlignment
                                  .start,
                              children: [
                                Container(
                                  width: 190,
                                  // margin: EdgeInsets.only(top: 20),
                                  child: Row(
                                    children: [
                                      Text(
                                        streamName,
                                        style: TextStyle(
                                            fontWeight:
                                            FontWeight
                                                .bold,
                                            fontSize: 20,
                                            color: Constants
                                                .text_light_black),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment:
                              CrossAxisAlignment.end,
                              children: [
                                Card(
                                  shape:
                                  RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadius
                                        .circular(30),
                                  ),
                                  child: Container(
                                    padding:
                                    EdgeInsets.only(
                                        top: 10,
                                        bottom: 10,
                                        left: 12,
                                        right: 12),
                                    child: Text(
                                      percentage,
                                      style: TextStyle(
                                          fontWeight:
                                          FontWeight
                                              .bold,
                                          fontSize: 14,
                                          color: Constants
                                              .text_light_gray),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Text(
                              schoolName,
                              style: TextStyle(
                                  fontWeight:
                                  FontWeight.w400,
                                  fontSize: 15,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Text(
                              passOutYear,
                              style: TextStyle(
                                  fontWeight:
                                  FontWeight.w400,
                                  fontSize: 15,
                                  color: Constants
                                      .text_light_gray),
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
