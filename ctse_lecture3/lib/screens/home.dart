import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ctse_lecture3/components/list_item.dart';
import 'package:ctse_lecture3/provider/shop_provider.dart';
import 'package:ctse_lecture3/screens/shop.dart';
import 'about.dart';

class Home extends StatefulWidget {
  static const String routeName = "/";

  // final Color color;
  // const Home({Key? key, required this.color}) : super(key: key);

  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int count = 0;

  void _onIncrement() {
    setState(() {
      count++;
    });
    print('Count is $count');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Home'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            // Can use GestureDetector / InkWell(Animated)
            onTap: _onIncrement,
            child: Text(
              'Count is $count',
              style: const TextStyle(fontSize: 20),
            ),
          ),
          Text(
            "Cart Quantity: ${Provider.of<ShopProvider>(context).quantity}",
            style: const TextStyle(fontSize: 20),
          ),
          // ListItem(content: "Content 1", color: widget.color),
          // ListItem(content: "Content 2", color: widget.color),
          // ListItem(content: "Content 3", color: widget.color),
          // ListItem(content: "Content 4", color: widget.color),
          const ListItem(content: "Content 1"),
          const ListItem(content: "Content 2"),
          const ListItem(content: "Content 3"),
          const ListItem(content: "Content 4"),
          ElevatedButton(
            // onPressed: null, // This display a disabled button
            onPressed: () {
              Navigator.of(context).pushNamed(About.routeName);
            },
            child: const Text('About'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed(Shop.routeName);
            },
            child: const Text('Shop'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          _onIncrement();
        },
      ),
    );
  }
}
