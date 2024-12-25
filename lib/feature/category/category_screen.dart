import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internintellgence_furnitureapp/core/data/data_class.dart';
import 'package:internintellgence_furnitureapp/core/providers/category_provider.dart';
import 'package:internintellgence_furnitureapp/feature/category/widget/background_category.dart';
import 'package:internintellgence_furnitureapp/feature/category/widget/category_body.dart';
import 'package:internintellgence_furnitureapp/feature/category/widget/title.dart';
import 'package:provider/provider.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key, required this.category});
final Category category;
  @override
  Widget build(BuildContext context) {
    
    //final category = Provider.of<CategoryProvider>(context).category;

    return Scaffold(
      body: ListView(
        children: [
          BackgroundCategory(category: category),  
          SizedBox(height: 20.h),
          CustomTitle(category: category),
          SizedBox(height: 20.h),
          CategoryBody(category: category),
        ],
      ),
    );
  }
}
