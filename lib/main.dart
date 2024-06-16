import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:portfoliojaydiptankflutter/home_page.dart';
import 'package:portfoliojaydiptankflutter/splash_screen.dart';

import 'WidgetTree.dart';
import 'constants.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(apiKey: "apiKey", appId: "1:200726911348:android:79042aa2c8ab3a52593421", messagingSenderId: "200726911348", projectId:
    "portfolio-jaydip-tank")
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Demo",
      theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: Colors.white,
      ),
      routes: {
        '/': (context) => SplashScreen(
          child: WidgetTree(),
        )
      },
    );
  }
}
