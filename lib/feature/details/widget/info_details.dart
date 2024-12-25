import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:readmore/readmore.dart';
import 'package:internintellgence_furnitureapp/core/data/data_class.dart';

class InfoDetails extends StatelessWidget {
  const InfoDetails({super.key, required this.product, required this.category, required this.availableColors});
  
  final Product product;
  final Category category;
  final List<Color> availableColors;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              product.name,
              style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 10.h),
          Text(
            'Category:  ${category.name}',
            style: TextStyle(fontSize: 18.sp),
          ),
          SizedBox(height: 10.h),
          ReadMoreText(
            'Description:  ${product.description}',
            trimLines: 3,
            trimMode: TrimMode.Line,
            trimCollapsedText: 'Read more',
            trimExpandedText: 'Read less',
            style: TextStyle(fontSize: 16.sp, color: Colors.grey),
            moreStyle: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold, color: Color(0xffFABC3C)),
            lessStyle: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold, color: Color(0xffFABC3C)),
          ),
          SizedBox(height: 20.h),
          Text(
            "Available Colors:",
            style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10.h),
          Row(
            children: availableColors.map((color) {
              return Padding(
                padding: const EdgeInsets.only(right: 10),
                child: CircleAvatar(
                  radius: 15,
                  backgroundColor: color,
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
