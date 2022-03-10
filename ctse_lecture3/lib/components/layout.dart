import 'package:flutter/material.dart';

class Layout extends StatelessWidget {
  final String title;
  final Widget? body;
  final Widget? floatingActionButton;

  const Layout({
    Key? key,
    required this.title,
    this.body,
    this.floatingActionButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(title),
        automaticallyImplyLeading: false, // Don't show the back button
      ),
      body: body,
      floatingActionButton: floatingActionButton,
    );
  }
}
