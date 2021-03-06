import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:youtube_clone/UI/view/home_screen_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          textTheme: TextTheme(
              headline1: GoogleFonts.roboto(
                  textStyle: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 18))),
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Color(0xff191919),
          canvasColor: Color(0xff282828),
          visualDensity: VisualDensity.adaptivePlatformDensity,
          primaryColor: Color(0xff282828)),
      home: HomeScreen(),
    );
  }
}
