import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';
import 'constants.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

final nameController = TextEditingController();
final addressController = TextEditingController();
final subjectController = TextEditingController();
final messageController = TextEditingController();

class _ContactState extends State<Contact> {
  final _form = GlobalKey<FormState>();
  late String name;
  late String address;
  late String subject;
  late String message;
  void writeData() async {
    name = nameController.text.toString();
    address = addressController.text.toString();
    subject = subjectController.text.toString();
    message = messageController.text.toString();
    // _form.currentState?.save();

    var url = "https://portfolio-jaydip-tank-default-rtdb.firebaseio.com/" +
        "email.json";

    if (nameController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(
          "Please Enter Name",
        ),
        duration: Duration(seconds: 4),
      ));
      return;
    } else if (addressController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(
          "Please Enter Email Address",
        ),
        duration: Duration(seconds: 4),
      ));
      return;
    } else if (subjectController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(
          "Please Enter Subject Address",
        ),
        duration: Duration(seconds: 4),
      ));
      return;
    } else if (messageController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(
          "Please Enter Message Address",
        ),
        duration: Duration(seconds: 4),
      ));
      return;
    } else {
      try {
        final response = await http.post(
          Uri.parse(url),
          body: json.encode({
            "name": name,
            "address": address,
            "subject": subject,
            "message": message
          }),
        );
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(
            "Message successfully send.",
          ),
          duration: Duration(seconds: 4),
        ));
        nameController.clear();
        addressController.clear();
        subjectController.clear();
        messageController.clear();
        FocusScope.of(context).unfocus();
      } on Exception catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(
            e.toString(),
          ),
          duration: Duration(seconds: 4),
        ));
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(
            e.toString(),
          ),
          duration: Duration(seconds: 4),
        ));
      }
    }
  }

  String? validateEmail(String? value) {
    const pattern = r"(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'"
        r'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-'
        r'\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*'
        r'[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:(2(5[0-5]|[0-4]'
        r'[0-9])|1[0-9][0-9]|[1-9]?[0-9]))\.){3}(?:(2(5[0-5]|[0-4][0-9])|1[0-9]'
        r'[0-9]|[1-9]?[0-9])|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\'
        r'x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])';
    final regex = RegExp(pattern);

    return value!.isNotEmpty && !regex.hasMatch(value)
        ? 'Enter a valid email address'
        : null;
  }

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
                              "Get In Touch",
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
                              "Let’s build something awesome.",
                              style: TextStyle(
                                color: Constants.very_light_gray,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
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
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 10, right: 10),
                                width: 370,
                                child: Card(
                                  elevation: 3,
                                  color: Constants.card_light_gray,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
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
                                          width: 370,
                                          child: Column(
                                            children: [
                                              Container(
                                                height: 40,
                                                margin: EdgeInsets.only(
                                                    left: 12, right: 12),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Column(
                                                      children: [
                                                        Row(
                                                          children: [
                                                            Container(
                                                              width: 12,
                                                              height: 12,
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      left: 0,
                                                                      right:
                                                                          10),
                                                              decoration:
                                                                  BoxDecoration(
                                                                shape: BoxShape
                                                                    .circle,
                                                                color: Constants
                                                                    .red,
                                                              ),
                                                            ),
                                                            Container(
                                                              width: 12,
                                                              height: 12,
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      right:
                                                                          10),
                                                              decoration:
                                                                  BoxDecoration(
                                                                shape: BoxShape
                                                                    .circle,
                                                                color: Constants
                                                                    .orange,
                                                              ),
                                                            ),
                                                            Container(
                                                              width: 12,
                                                              height: 12,
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      right:
                                                                          10),
                                                              decoration:
                                                                  BoxDecoration(
                                                                shape: BoxShape
                                                                    .circle,
                                                                color: Constants
                                                                    .green,
                                                              ),
                                                            ),
                                                          ],
                                                        )
                                                      ],
                                                    ),
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Container(
                                                          margin:
                                                              EdgeInsets.only(
                                                                  right: 30),
                                                          width: 200,
                                                          child: Text(
                                                            "New massage",
                                                            style: TextStyle(
                                                                fontSize: 16,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Center(
                                                    child: Container(
                                                      width: 350,
                                                      child: Divider(
                                                        color: Constants
                                                            .border_light_gray,
                                                        thickness: 1,
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                              Form(
                                                autovalidateMode:
                                                    AutovalidateMode.always,
                                                key: _form,
                                                child: Column(
                                                  children: [
                                                    commonTextField(
                                                        "Name : ",
                                                        "Enter Your Name",
                                                        nameController,
                                                        null,
                                                        TextInputType.name),
                                                    commonTextField(
                                                        "Email : ",
                                                        "Enter Your Email",
                                                        addressController,
                                                        validateEmail,
                                                        TextInputType
                                                            .emailAddress),
                                                    commonTextField(
                                                        "Subject : ",
                                                        "Enter subject",
                                                        subjectController,
                                                        null,
                                                        TextInputType
                                                            .multiline),
                                                    SizedBox(
                                                      height: 30,
                                                    ),
                                                    Column(
                                                      children: [
                                                        Card(
                                                          color: Constants
                                                              .card_light_gray_2,
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12),
                                                          ),
                                                          child: SizedBox(
                                                            width:
                                                                350, // <-- TextField width
                                                            height:
                                                                350, // <-- TextField height
                                                            child:
                                                                TextFormField(
                                                              controller:
                                                                  messageController,
                                                              style: TextStyle(
                                                                fontSize: 16,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                              cursorColor:
                                                                  Colors.black,
                                                              maxLines: null,
                                                              expands: true,
                                                              keyboardType:
                                                                  TextInputType
                                                                      .multiline,
                                                              decoration:
                                                                  InputDecoration(
                                                                border:
                                                                    InputBorder
                                                                        .none,
                                                                focusedBorder:
                                                                    InputBorder
                                                                        .none,
                                                                enabledBorder:
                                                                    InputBorder
                                                                        .none,
                                                                errorBorder:
                                                                    InputBorder
                                                                        .none,
                                                                disabledBorder:
                                                                    InputBorder
                                                                        .none,
                                                                contentPadding:
                                                                    EdgeInsets.only(
                                                                        left:
                                                                            15,
                                                                        bottom:
                                                                            11,
                                                                        top: 11,
                                                                        right:
                                                                            15),
                                                                hintText:
                                                                    "Write your message here",
                                                              ),
                                                            ),
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 20,
                                                    ),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                                  left: 5,
                                                                  right: 5),
                                                          child: ElevatedButton(
                                                            onPressed:
                                                                writeData,

                                                            // onPressed: () {
                                                            //   _key.currentState!
                                                            //       .save();
                                                            //   sendEmail(
                                                            //       subject.text,
                                                            //       body.text,
                                                            //       email.text);
                                                            //   // this.setState(() {
                                                            //   //   subject.clear();
                                                            //   //   email.clear();
                                                            //   //   body.clear();
                                                            //   // });
                                                            // },
                                                            child: Text(
                                                              "Send",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize: 18,
                                                                  letterSpacing:
                                                                      1),
                                                            ),
                                                            style:
                                                                ElevatedButton
                                                                    .styleFrom(
                                                              backgroundColor:
                                                                  Colors.black,
                                                              minimumSize:
                                                                  Size(340, 60),
                                                              elevation: 5,
                                                              shape:
                                                                  RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    )
                                                  ],
                                                ),
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
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      final call =
                                          Uri.parse('tel:+91 7623047611');
                                      launchUrl(call);
                                    },
                                    icon: Icon(
                                      Icons.phone,
                                      color: Constants.gray,
                                      size: 28,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      final sms = Uri.parse('sms:7623047611');
                                      launchUrl(sms);
                                    },
                                    icon: Icon(
                                      Icons.chat,
                                      color: Constants.gray,
                                      size: 28,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      String? encodeQueryParameters(
                                          Map<String, String> params) {
                                        return params.entries
                                            .map((MapEntry<String, String> e) =>
                                                '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
                                            .join('&');
                                      }

                                      final Uri emailLaunchUri = Uri(
                                        scheme: 'mailto',
                                        path: 'jaydiptank2004@gmail.com',
                                        query: encodeQueryParameters(<String,
                                            String>{
                                          'subject': '',
                                        }),
                                      );

                                      launchUrl(emailLaunchUri);
                                    },
                                    icon: Icon(
                                      Icons.email,
                                      color: Constants.gray,
                                      size: 28,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      String url =
                                          "https://wa.me/+917623047611/?text=Hello";
                                      launch(url);
                                    },
                                    icon: Icon(
                                      FontAwesomeIcons.squareWhatsapp,
                                      color: Constants.gray,
                                      size: 28,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      String url =
                                          "https://www.linkedin.com/feed/";
                                      launch(url);
                                    },
                                    icon: Icon(
                                      FontAwesomeIcons.linkedin,
                                      color: Constants.gray,
                                      size: 28,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      String url =
                                          "https://github.com/Jaydip04";
                                      launch(url);
                                    },
                                    icon: Icon(
                                      FontAwesomeIcons.github,
                                      color: Constants.gray,
                                      size: 28,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
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

  Column commonTextField(
      title, hint, controller, validateEmail, TextInputType) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(left: 15, right: 15),
          child: Row(
            children: [
              Text(
                title,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Constants.text_light_black),
              ),
              Container(
                width: 250,
                child: Column(
                  children: [
                    TextFormField(
                      keyboardType: TextInputType,
                      validator: validateEmail,
                      controller: controller,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        contentPadding: EdgeInsets.only(
                            left: 15, bottom: 11, top: 11, right: 15),
                        hintText: hint,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          width: 340,
          child: Divider(
            color: Constants.title_light_gray,
            thickness: 1,
          ),
        ),
      ],
    );
  }
}
