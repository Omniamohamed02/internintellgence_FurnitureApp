import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internintellgence_furnitureapp/core/data/data_class.dart';

class CategoryWidget extends StatelessWidget {
  final Product product;

  const CategoryWidget({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        color: Colors.white,
      ),
      height: 240.h,
      width: 180.w,
      margin: EdgeInsets.all(5),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20.r),
            child: Image.asset(
              product.image, 
              height: 150.h,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 130,
            child: Container(
             color: Colors.white,
            )),
          Positioned(
            bottom: 40.h,
            left: 10.w,
            child: Text(
              product.name, 
              style: TextStyle(fontSize: 16.sp),
            ),
          ),
          Positioned(
            bottom: 20.h,
            left: 10.w,
            child: Text(
              '\$${product.price}', 
              style: TextStyle(fontSize: 16.sp, color: Colors.grey),
            ),
          ),
          Positioned(
            right: 10.w,
            bottom: 15.h,
            child: Container(
            width: 20.w,
            height: 20.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color:  Color.fromARGB(255, 1, 70, 3),
            ),
            child: Icon(Icons.add,color: Colors.white,),
          ))
        ],
      ),
    );
  }
}
