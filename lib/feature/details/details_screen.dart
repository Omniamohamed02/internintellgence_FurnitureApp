import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internintellgence_furnitureapp/core/data/data_class.dart';
import 'package:internintellgence_furnitureapp/feature/details/widget/add_to_cart.dart';
import 'package:internintellgence_furnitureapp/feature/details/widget/image_details.dart';
import 'package:internintellgence_furnitureapp/feature/details/widget/info_details.dart';
import 'package:internintellgence_furnitureapp/feature/details/widget/price.dart';
import 'package:internintellgence_furnitureapp/feature/details/widget/quantity-selector.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.product, required this.category});
final Product product;
final Category category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: AddToCart(product: product,),
      body: ListView(
        children: [
          ImageDetails(product: product,),
           SizedBox(height: 20.h,),
          InfoDetails(product: product, category: category, availableColors: [
             Color.fromARGB(255, 2, 105, 189),  
        Color.fromARGB(255, 242, 94, 143),  
        Color.fromARGB(255, 17, 79, 20),  
        Color.fromARGB(255, 110, 2, 129),
        Colors.black,
          ],),
           SizedBox(height: 20.h,),
          Price(product: product,),
        ]
        )
    );
  }
}