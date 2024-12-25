import 'package:flutter/material.dart';
import 'package:internintellgence_furnitureapp/feature/home/widget/category_list.dart';
import 'package:internintellgence_furnitureapp/feature/home/widget/category_row.dart';
import 'package:internintellgence_furnitureapp/feature/home/widget/mycarousel.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Mycarousel(),
          CategoryRow(),
          SizedBox(height: 10,),
          CategoryList(),
        ],
      )
    );
  }
}
