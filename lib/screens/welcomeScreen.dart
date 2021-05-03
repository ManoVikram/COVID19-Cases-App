import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './homeScreen.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFCCE3FF),
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/WelocmeIllustration.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(36.0),
                  topRight: Radius.circular(36.0),
                ),
                color: Colors.white,
              ),
              padding: EdgeInsets.all(28.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Be aware \nStay healthy",
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 24.0,
                  ),
                  Text(
                    "Welcome to COVID-19 information portal.",
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  SizedBox(
                    height: 44.0,
                  ),
                  Row(
                    children: [
                      Spacer(),
                      Text(
                        "GET STARTED",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (_) => HomeScreen(),
                            ),
                          );
                        },
                        child: Container(
                          height: 44.0,
                          width: 44.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFF9156EC),
                          ),
                          child: Icon(
                            CupertinoIcons.arrow_right,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
