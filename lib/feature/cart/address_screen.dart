import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internintellgence_furnitureapp/feature/cart/payment_screen.dart';
import 'package:internintellgence_furnitureapp/feature/cart/widget/address_text_field.dart';

class AddressScreen extends StatelessWidget {
  AddressScreen({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkout',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: ListView(
          children: [
            SizedBox(height: 40.h,),
            AddressTextField(hint: 'Enter Your Name', label: " Name", errormsg: "Please Enter your Name!"),
             SizedBox(height: 20.h,),
              AddressTextField(hint: 'Enter Your Phone Number', label: " Phone Number", errormsg: "Please Enter your Phone Number!"),
              SizedBox(height: 20.h,),
              AddressTextField(hint: 'Enter Your City', label: "City", errormsg: "Please Enter your City !"),
               SizedBox(height: 20.h,),
               AddressTextField(hint: 'Enter Your Full Address', label: "Full Address", errormsg: "Please Enter your Full Address!"),
                SizedBox(height: 20.h,),
            Center(
              child: ElevatedButton(
                onPressed: () {
                 Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PaymentScreen(),
                ),
              );
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Text(
                  'Continue',
                  style: TextStyle(fontSize: 16,color: Colors.black),
                ),
              ),
            ),
          ],
        ),
    );
  }
}