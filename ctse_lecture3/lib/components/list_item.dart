import 'package:flutter/material.dart';
import 'color_manager.dart';

class ListItem extends StatelessWidget {
  final String content;

  // final Color color;
  // const ListItem({Key? key, required this.content, required this.color}) : super(key: key);

  const ListItem({Key? key, required this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          Icon(
            Icons.verified_user,
            color: Theme.of(context).primaryColor,
          ),
          const SizedBox(width: 10),
          Text(
            content,
            // style: TextStyle(color: color),
            // style: TextStyle(color: ColorManager.of(context).primaryColor),
            style: TextStyle(color: Theme.of(context).primaryColor),
          ),
        ],
      ),
    );
  }
}
