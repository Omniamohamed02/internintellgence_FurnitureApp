import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internintellgence_furnitureapp/core/providers/cart_provider.dart';
import 'package:internintellgence_furnitureapp/core/providers/category_provider.dart';
import 'package:internintellgence_furnitureapp/feature/custom_bottom_nav_bar.dart';
import 'package:provider/provider.dart';

void main() {
   runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CartProvider()),
          ChangeNotifierProvider(create: (_) => CategoryProvider()),
      ],
      child: MyApp(),
    ),
  );
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
   Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
    minTextAdapt: true,
    splitScreenMode: true,
    builder: (_ , child) {
      return MaterialApp(
     debugShowCheckedModeBanner: false,
      home: const CustomBottomNavBar(),
     );
    }
    );
    }
        }