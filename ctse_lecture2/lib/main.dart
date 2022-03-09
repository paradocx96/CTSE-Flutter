import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ctse_lecture2/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "KungfuMaster",
        primarySwatch: Colors.amber,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Hello Flutter',
            style: GoogleFonts.pacifico(),
          ),
        ),
        body: const Home(),
      ),
    );
  }
}
