import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'components/color_manager.dart';
import 'package:ctse_lecture3/provider/shop_provider.dart';
import 'package:ctse_lecture3/screens/about.dart';
import 'package:ctse_lecture3/screens/shop.dart';
import 'package:ctse_lecture3/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // const Color primaryColor = Colors.green;

    return ChangeNotifierProvider(
      create: (context) => ShopProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.cyan,
        ),
        // home: const Home(),
        // home: const Home(color: primaryColor),
        // home: const ColorManager(child: Home()),
        initialRoute: Home.routeName,
        routes: {
          Home.routeName: (context) => const Home(),
          About.routeName: (context) => const About(),
          Shop.routeName: (context) => const Shop(),
        },
      ),
    );
  }
}
