import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Mycarousel extends StatelessWidget {
   Mycarousel({super.key});
  final List<String> imagePaths = [
    'assets/image/baby/backgroundbaby.png',
    'assets/image/bed/backgroundbed.png',
    'assets/image/chair/chair4.png',
    'assets/image/lights/backgroundlight.png',
    'assets/image/storage/storage.png',
  ];
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 200.h,
        autoPlay: true,
        enlargeCenterPage: true,
        aspectRatio: 16 / 9,
        autoPlayInterval: Duration(seconds: 3),
      ),
      items: imagePaths.map((imagePath) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              decoration: BoxDecoration( borderRadius:BorderRadius.circular(20.r) ),
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 5.h),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.r),
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.fill,
                ),
              ),
            );
          },
        );
      }).toList()
    );
  }
}
