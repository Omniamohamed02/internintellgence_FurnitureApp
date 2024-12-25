
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internintellgence_furnitureapp/feature/custom_bottom_nav_bar.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.ButtonName, });

  final String ButtonName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: ElevatedButton(
          onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) =>  CustomBottomNavBar(),
                ),
              );
            },
          child: Text(
            '$ButtonName',
            style: TextStyle(
                color: Colors.white, fontSize: 18.sp, fontWeight: FontWeight.bold),
          ),
      style: ElevatedButton.styleFrom(backgroundColor: Color(0xffC19A6B), // Button color
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30), // Border radius
        ),
        minimumSize: Size(double.infinity, 50.h),elevation: 2,)
      ),
    );
  }
}
