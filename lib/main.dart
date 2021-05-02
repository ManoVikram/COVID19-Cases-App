import 'package:flutter/material.dart';

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
      theme: ThemeData(),
      home: Covid(),
    );
  }
}

class Covid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

void main() {
  runApp(MyApp());
}
