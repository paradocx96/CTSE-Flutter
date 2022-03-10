import 'package:flutter/material.dart';

class ShopProvider extends ChangeNotifier {
  int _quantity = 0;

  int get quantity => _quantity;

  void increment() {
    _quantity++;
    notifyListeners();
    print('Quantity is $_quantity');
  }

  void decrement() {
    if (_quantity != 0) {
      _quantity--;
      notifyListeners();
    }
    print('Quantity is $_quantity');
  }
}
