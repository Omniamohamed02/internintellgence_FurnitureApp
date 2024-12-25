import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internintellgence_furnitureapp/core/data/data_class.dart';

class BackgroundCategory extends StatelessWidget {
  const BackgroundCategory({super.key, required this.category});
  final Category category;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height/3,
      decoration: BoxDecoration( /*borderRadius:BorderRadius.circular(20.r)*/ ),
      width:MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(horizontal: 5.h),
      child: ClipRRect(
      //  borderRadius: BorderRadius.circular(20.r),
        child: Stack(
          children:[
            
            Positioned.fill(
              child: Image.asset(
              category.backgroundImage,
              fit: BoxFit.cover,
                        ),
            ),
             Positioned(
              top: 10.h,
              left: 15.w,
              child: IconButton(onPressed: (){
              Navigator.pop(context);
            }, icon: Icon(Icons.arrow_back_ios,color:/*Color(0xffFABC3C)*/ Color.fromARGB(255, 1, 70, 3) ,))),
        ]),
      ),
    );
  }
}
