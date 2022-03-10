import 'package:flutter/material.dart';
import 'package:ctse_lecture3/components/layout.dart';

class About extends StatelessWidget {
  static const String routeName = '/about';

  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Layout(
      title: "About",
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(width: double.infinity),
          const Text(
            "About",
            style: TextStyle(fontSize: 20),
          ),
          OutlinedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text("Home"),
          ),
        ],
      ),
    );
  }
}
