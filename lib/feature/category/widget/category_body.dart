import 'package:flutter/material.dart';
import 'package:internintellgence_furnitureapp/core/data/data_class.dart';
import 'package:internintellgence_furnitureapp/feature/category/widget/category_widget.dart';

class CategoryBody extends StatelessWidget {
  final Category category;

  const CategoryBody({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: category.products.length,  
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.7,
        crossAxisSpacing: 10,
        mainAxisSpacing: 15,
      ),
      itemBuilder: (context, index) {
        final product = category.products[index];  
        return CategoryWidget(product: product);  
      },
    );
  }
}
