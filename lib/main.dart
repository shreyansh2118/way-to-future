import 'package:flutter/material.dart';
import 'package:newproject/pages/colour.dart';
import 'package:newproject/pages/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false ,
      theme: ThemeData(

        primaryColor: kBg,

      ),
      home: homepage()
    );
  }
}


