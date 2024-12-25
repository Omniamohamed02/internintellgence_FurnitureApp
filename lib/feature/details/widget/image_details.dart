import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internintellgence_furnitureapp/core/data/data_class.dart';

class ImageDetails extends StatelessWidget {
  const ImageDetails({super.key, required this.product});
final Product product;
  @override
  Widget build(BuildContext context) {
    return 
    /*Padding(
      padding: const EdgeInsets.all(20.0),
      child:*/
       Container(
        width: double.infinity,
        height: MediaQuery.sizeOf(context).height/2,
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(product.image,
                      width: double.infinity,
                      height: MediaQuery.sizeOf(context).height/2,
                      fit: BoxFit.fill,
                      ),
            ),
            Positioned(
              top: 10.h,
              left: 15.w,
              child: IconButton(onPressed: (){
              Navigator.pop(context);
            }, icon: Icon(Icons.arrow_back_ios))),
            Positioned(
              top: 10.h,
              right: 15.w,
              child: IconButton(onPressed: (){
              Navigator.pop(context);
            }, icon: Icon(Icons.favorite_border_outlined)))
        ]),
      );
   // ) ;
    }
}