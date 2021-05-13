import 'package:ecomappui/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.light().copyWith(
        primaryColor: Color(0xff455A6F),
        scaffoldBackgroundColor: Colors.white,
        textTheme: TextTheme(
            headline1: GoogleFonts.openSans(
              fontWeight: FontWeight.w700,
              color: Color(0xff455A6F),
              fontSize: 40,
              letterSpacing: 1.5,
            ),
            headline2: GoogleFonts.openSans(
              fontWeight: FontWeight.w700,
              color: Color(0xff455A6F),
              fontSize: 22,
            ),
            subtitle1: GoogleFonts.openSans(
              fontSize: 15,
              fontWeight: FontWeight.w700,
              color: Color(0xffAAAAAA),
            ),
            button: GoogleFonts.openSans(
              fontWeight: FontWeight.w700,
              color: Colors.white,
              fontSize: 20,
              letterSpacing: 2,
            )),
        colorScheme: ColorScheme.light(
          primary: Color(0xff455A6F),
          secondary: Color(0xffFFEFA1),
          error: Colors.red,
          surface: Color(0xffF1F6F9),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}
