import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internintellgence_furnitureapp/core/data/data_class.dart';
import 'package:provider/provider.dart';
import 'package:internintellgence_furnitureapp/core/providers/cart_provider.dart';

class CartListtile extends StatelessWidget {
  CartListtile({
    super.key,
    required this.product,
    required this.index,  
  });

 
  final Product product;
  final int index;  

  @override
  Widget build(BuildContext context) {
    
    final cartProvider = Provider.of<CartProvider>(context);

    return  Card(
        color: Colors.white,
        elevation: 2.0,
        child: Container(
          width: double.infinity,
          height: 100.h,
          color: Colors.white,
          margin: EdgeInsets.symmetric(vertical: 10.h, horizontal: 5.w),
          child: Stack(
            children: [
              Positioned(
                left: 20.w,
                top: 10.h,
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20.r)),
                  child: Image.asset(
                    product.image.isNotEmpty
                        ? product.image
                        : 'assets/images/default_image.png',  // صورة افتراضية
                    height: 120.h,
                    width: 90.w,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: 10.h,
                left: 120.w,
                child: Text(
                  product.name,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.sp),
                ),
              ),
              Positioned(
                bottom: 30.h,
                left: 120.w,
                 child: Text(product.description.length > 20 
                     ? product.description.substring(0, 20) + '...' 
                         : product.description,
                  style: TextStyle(color: Colors.grey, fontSize: 14.sp),
                ),
              ),
              Positioned(
                bottom: 10.h,
                left: 120.w,
                child: Text(
                  "${product.price.toString()} \$",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp),
                ),
              ),
             
            ],
          ),
        ),
      
    );
  }
}
