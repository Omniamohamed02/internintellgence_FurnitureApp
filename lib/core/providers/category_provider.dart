import 'package:flutter/material.dart';
import 'package:internintellgence_furnitureapp/core/data/data_class.dart';

class CategoryProvider with ChangeNotifier {
  final List<Category> _categories = []; // تخزين البيانات محليًا

  // إرجاع قائمة الكاتجوري
  List<Category> get categories => _categories;

  // جلب البيانات من data_class
  void loadCategories(List<Category> categoryList) {
    _categories.clear();
    _categories.addAll(categoryList);
    notifyListeners();
  }

  // إضافة كاتجوري جديد
  void addCategory(Category category) {
    _categories.add(category);
    notifyListeners();
  }

  // إزالة كاتجوري
  void removeCategory(Category category) {
    _categories.remove(category);
    notifyListeners();
  }

  // تحديث كاتجوري
  void updateCategory(int index, Category newCategory) {
    if (index >= 0 && index < _categories.length) {
      _categories[index] = newCategory;
      notifyListeners();
    }
  }
}
