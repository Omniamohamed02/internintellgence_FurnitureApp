import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internintellgence_furnitureapp/core/data/data_class.dart';
import 'package:internintellgence_furnitureapp/feature/details/details_screen.dart';


class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.product, required this.category});
 final Product product;
 final Category category;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, 
        MaterialPageRoute(builder: (context)=> DetailsScreen(product: product, category:category ,)));
      },
      child: Container(
       decoration: BoxDecoration(
           borderRadius:BorderRadius.circular(20.r),
         color: Colors.white,),
        height: 300.h,
        width: 220.w,
        margin: EdgeInsets.all(5),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20.r),
              child: Image.asset( product.image,
              height: 180.h,
              width: double.infinity,
              fit: BoxFit.fill,),
            ),
            Positioned(
              top: 100.h,
                child: Container(
                  color: Colors.white,
                )),
            Positioned(
              bottom: 50.h,
                left: 10.w,
                  child:   Text(product.name,style: TextStyle( fontSize: 16.sp),),
                  ),
                  Positioned(
                    bottom: 50.h,
                    right: 10.w,
                    child:Icon(Icons.favorite_border)),
            Positioned(
              bottom: 30.h,
                left: 10.w,
                child: Text(product.description.length > 20 
                     ? product.description.substring(0, 20) + '...' 
                         : product.description,style: TextStyle(fontSize: 12.sp,color: Colors.grey),maxLines: 1, 
                        overflow: TextOverflow.ellipsis, )),
            Positioned(
              bottom: 10.h,
                left: 10.w,
                child:
                    Text('\$${product.price}',style: TextStyle(fontSize: 14.sp),),
                 ),
                  Positioned(
                   bottom: 10.h,
                    right: 10.w,
                  child: Icon(Icons.shopping_bag_outlined,color: Color(0xffFABC3C),))
      
          ],
        ),
      ),
    );
  }
}
