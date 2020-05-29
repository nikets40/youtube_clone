import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExplorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Hello World",
          style: GoogleFonts.roboto(textStyle: TextStyle(color: Colors.white)),
        )
      ],
    );
  }
}
