import 'package:flutter/material.dart';
import 'package:internintellgence_furnitureapp/core/data/data.dart';
import 'package:internintellgence_furnitureapp/feature/home/widget/category_button.dart';

class CategoryRow extends StatelessWidget {
  const CategoryRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: categories
              .map((category) => CategoryButton(category: category)) 
              .toList(),
        ),
      ),
    );
  }
}
