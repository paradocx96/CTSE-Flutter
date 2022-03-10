import 'package:flutter/material.dart';

import 'package:ctse_lecture4/screens/home.dart';
import 'package:ctse_lecture4/screens/post_add.dart';

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
        primarySwatch: Colors.blue,
      ),
      routes: {
        Home.routeName: (context) => Home(),
        PostAdd.routeName: (context) => PostAdd(),
      },
    );
  }
}
