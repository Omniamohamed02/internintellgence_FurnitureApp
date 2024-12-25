import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internintellgence_furnitureapp/core/data/data_class.dart';
import 'package:internintellgence_furnitureapp/feature/home/widget/category_card.dart';
import 'package:internintellgence_furnitureapp/core/data/data.dart'; 
class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      
        Container(
          height: 1000,
          child: ListView.builder(
            scrollDirection: Axis.vertical, 
            itemCount: categories.length,
            itemBuilder: (context, index) {
              Category category = categories[index]; 

              return Padding(
                padding: EdgeInsets.symmetric(vertical: 10.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                 
                    Text(
                      category.name,
                      style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
                    ),
                    
                   
                    Container(
                      height: 280.h, 
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal, 
                        itemCount: category.products.length,
                        itemBuilder: (context, productIndex) {
                          Product product = category.products[productIndex]; 
                          return Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.w),
                            child: CategoryCard(product: product, category: category,), 
                          );
                        },
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
