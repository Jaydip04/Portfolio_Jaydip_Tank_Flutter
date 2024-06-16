import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'constants.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Constants.my_primary,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30))),
        title: Text(
          "Jaydip Tank",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 30,
              left: 25,
            ),
            child: Text(
              "About",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Constants.my_primary,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 30,
              left: 25,
            ),
            child: Text(
              "Version 1.0.7",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Constants.light_gray,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 25,
              left: 20,
            ),
            child: TextButton(
              onPressed: () {
                String? encodeQueryParameters(Map<String, String> params) {
                  return params.entries
                      .map((MapEntry<String, String> e) =>
                          '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
                      .join('&');
                }

                final Uri emailLaunchUri = Uri(
                  scheme: 'mailto',
                  path: 'jaydiptank2004@gmail.com',
                  query: encodeQueryParameters(<String, String>{
                    'subject': 'Simple Report',
                  }),
                );

                launchUrl(emailLaunchUri);
              },
              // style: ButtonStyle(
              //     backgroundColor: MaterialStateProperty.all(Colors.red)),
              style: ButtonStyle(alignment: Alignment.centerLeft),
              child: Text(
                "Report Issues",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.redAccent,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
