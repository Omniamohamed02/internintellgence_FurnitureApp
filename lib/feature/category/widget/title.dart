import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internintellgence_furnitureapp/core/data/data_class.dart';

class CustomTitle extends StatelessWidget {
  const CustomTitle({super.key, required this.category});
  final Category category;

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(5),
    child: Center(child: Text(category.name,style: TextStyle(fontSize: 26.sp,fontWeight: FontWeight.bold),)),);
  }
}
