import 'package:flutter/cupertino.dart';
import 'package:practice/Models/product.dart';

class ProductModel extends ChangeNotifier {
  final List<Product> _selectedProduct = [];
  List<Product> get getProducts => _selectedProduct;
  void add(Product item) {
    _selectedProduct.add(item);
    notifyListeners();
  }
}
