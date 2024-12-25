import 'package:flutter/material.dart';
import 'package:internintellgence_furnitureapp/core/data/data_class.dart';
import 'package:internintellgence_furnitureapp/feature/category/category_screen.dart';

class CategoryButton extends StatelessWidget {
  const CategoryButton({super.key, required this.category});

  final Category category;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CategoryScreen(category: category,), 
            ),
          );
        },
        child: Text(
          category.name,
          style: TextStyle(color: Colors.white),
        ),
        style: ElevatedButton.styleFrom(backgroundColor: Color(0xffFABC3C)),
      ),
    );
  }
}
