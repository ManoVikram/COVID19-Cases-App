import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import './screens/welcomeScreen.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "COVID-19",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: GoogleFonts.questrial().fontFamily,
      ),
      home: Covid(),
    );
  }
}

class Covid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WelcomeScreen(),
    );
  }
}

void main() {
  runApp(MyApp());
}
