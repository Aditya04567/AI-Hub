// import 'package:app2/welcome.dart';
// import 'package:app2/slider/sliderscreen.dart';
// import 'package:app2/welcome.dart';

import 'Authentication/loginpage.dart';
// import 'package:app2/slider/slider2.dart';
import 'package:flutter/material.dart';
// import 'homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  Loginscreen(),
    );
  }
}

