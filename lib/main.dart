import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simplem_assignment/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          textTheme: GoogleFonts.poppinsTextTheme(
        Theme.of(context).textTheme,
      )),
      color: Colors.white,
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
