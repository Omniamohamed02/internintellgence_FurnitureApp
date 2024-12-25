import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text('Profile',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
          Container(
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border:Border.all(color: Colors.white,width: 2.w)
            ),
            child: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/image/omnia.jpg',),
              backgroundColor: Colors.transparent,
            ),
          ),
          Text('Omnia Mohamed',style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.bold),),
          Text('omnia@gmail',style: TextStyle(fontSize: 14.sp,),)
        ],
      ),
    );
  }
}
