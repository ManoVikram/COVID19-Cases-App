import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/dataContainer.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 40.0,
                      width: 40.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage("assets/images/User.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      height: 40.0,
                      width: 66.0,
                      padding: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24.0),
                        color: Colors.grey[300],
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 32.0,
                            width: 32.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/India.png"),
                              ),
                            ),
                          ),
                          Icon(
                            Icons.arrow_drop_down,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30.0,
                ),
                Container(
                  height: 190.0,
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Color(0xFF99D3FF),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Image.asset(
                          "assets/images/Doctor.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Know safety tips and precautions from top Doctors.",
                                style: TextStyle(
                                  fontFamily: GoogleFonts.poppins().fontFamily,
                                ),
                              ),
                              SizedBox(
                                height: 30.0,
                              ),
                              Container(
                                height: 30.0,
                                width: 50.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16.0),
                                  color: Color(0xFF9156EC),
                                ),
                                child: Icon(
                                  CupertinoIcons.arrow_right,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 24.0,
                ),
                Container(
                  height: 60.0,
                  width: 380.0,
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40.0),
                    color: Color(0xFFF49E6F),
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: double.infinity,
                        width: size.width * 0.45,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              offset: Offset(5, 7),
                              blurRadius: 30.0,
                              spreadRadius: -5.0,
                            ),
                          ],
                        ),
                        child: Center(
                          child: Text(
                            "Tracker",
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Container(
                        height: 60.0,
                        width: size.width * 0.35,
                        child: Center(
                          child: Text(
                            "Symptoms",
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFA74813),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 24.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Country",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[800],
                      ),
                    ),
                    Text(
                      "State",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      "City",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      "Wordwide",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 24.0,
                ),
                Wrap(
                  spacing: 14.0,
                  runSpacing: 14.0,
                  children: [
                    DataContainer(
                      size: size,
                      title: "Confirmed",
                      number: "2,32,395",
                      color: Color(0xFFFC1441),
                    ),
                    DataContainer(
                      size: size,
                      title: "Active",
                      number: "1,17,408",
                      color: Color(0xFF157FFB),
                    ),
                    DataContainer(
                      size: size,
                      title: "Recovered",
                      number: "1,13,325",
                      color: Color(0xFF30A64A),
                    ),
                    DataContainer(
                      size: size,
                      title: "Deceased",
                      number: "6,650",
                      color: Color(0xFF6D757D),
                    ),
                  ],
                ),
                SizedBox(
                  height: 24.0,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Spread Trends",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                // TODO: Bar Chart code here
              ],
            ),
          ),
        ),
      ),
    );
  }
}


