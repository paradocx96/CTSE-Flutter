import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ctse_lecture3/components/layout.dart';
import 'package:ctse_lecture3/provider/shop_provider.dart';

class Shop extends StatelessWidget {
  static const String routeName = '/shop';

  const Shop({Key? key}) : super(key: key);

  // int _quantity = 0;
  //
  // void onItemAdd() {
  //   setState(() {
  //     _quantity++;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    int quantity = Provider.of<ShopProvider>(context).quantity;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Shop'),
        actions: [
          Chip(label: Text('$quantity')),
        ],
      ),
      body: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.network(
              "https://m.media-amazon.com/images/I/71D9ImsvEtL._UL1500_.jpg",
              width: 150,
            ),
            const Text('Item 1'),
            IconButton(
              onPressed: () {
                Provider.of<ShopProvider>(context, listen: false).increment();
              },
              icon: const Icon(Icons.add_shopping_cart),
            ),
          ],
        ),
      ),
    );
  }
}
