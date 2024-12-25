import 'package:flutter/material.dart';
import 'package:internintellgence_furnitureapp/core/data/data_class.dart';

class CartProvider with ChangeNotifier {
  final List<Product> _cartProducts = []; // قائمة المنتجات في السلة

  // Getter للحصول على المنتجات
  List<Product> get cartProducts => _cartProducts;

  // Getter للحصول على عدد المنتجات
  int get cartCount => _cartProducts.length;

  // إضافة منتج للسلة
  void addProduct(Product product) {
    if (!_cartProducts.contains(product)) {
      _cartProducts.add(product);
      notifyListeners();
    }
  }

  // حذف منتج من السلة
  void removeProduct(Product product) {
    _cartProducts.remove(product);
    notifyListeners();
  }
}
