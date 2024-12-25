import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internintellgence_furnitureapp/feature/cart/address_screen.dart';
import 'package:internintellgence_furnitureapp/feature/custom_bottom_nav_bar.dart';
import 'package:internintellgence_furnitureapp/feature/home/home_screen.dart';

class CustomButtons extends StatelessWidget {
  const CustomButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(onPressed: (){
          Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CustomBottomNavBar(),
                ),
              );
        }, child: Text('Continue Shoping',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),)),
        SizedBox(height: 10.h,),
        ElevatedButton(onPressed: (){
          Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AddressScreen(),
                ),
              );
        }, child: Text('Proceed To Checkout',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white))
        ,style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Color(0xffFABC3C))),)
      ],
    );
  }
}