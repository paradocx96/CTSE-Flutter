import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          width: double.infinity,
        ),
        Image.network(
          'https://miro.medium.com/max/700/1*YWLkxromkAfNXyro145prw.png',
          width: 350,
        ),
        const SizedBox(
          height: 50,
        ),
        const Text(
          'Hello World',
          style: TextStyle(
            fontSize: 50,
          ),
        ),
        Text(
          'Welcome to Flutter World',
          style: GoogleFonts.pacifico(
            fontSize: 25,
            color: Colors.purple,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const FlutterLogo(size: 40),
        const SizedBox(
          height: 20,
        ),
        Image.asset(
          "assets/images/dart_logo.png",
          height: 45,
        ),
      ],
    );
  }
}
