import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DataContainer extends StatelessWidget {
  final String title;
  final String number;
  final Color color;

  const DataContainer({
    Key? key,
    required this.size,
    required this.title,
    required this.number,
    required this.color,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: size.width * 0.4,
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: color.withOpacity(0.2),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontFamily: GoogleFonts.poppins().fontFamily,
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
              color: color,
            ),
          ),
          Spacer(),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              number,
              style: TextStyle(
                fontFamily: GoogleFonts.poppins().fontFamily,
                fontWeight: FontWeight.w900,
                fontSize: 24.0,
                color: color,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
