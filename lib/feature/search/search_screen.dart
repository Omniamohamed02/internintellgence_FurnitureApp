import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internintellgence_furnitureapp/core/data/data.dart';
import 'package:internintellgence_furnitureapp/feature/home/widget/category_button.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text(
          "Search",
          style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search for items...",
                hintStyle: TextStyle(color: Colors.grey[500]),
                prefixIcon: Icon(Icons.search, color: Colors.grey[700]),
                filled: true,
                fillColor: Colors.grey[200],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.r),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
         
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 16.w),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Recent Searches",
                style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(height: 8.h),
          
          // Wrap the Row with SingleChildScrollView to allow horizontal scrolling
          SingleChildScrollView(
            scrollDirection: Axis.horizontal, // Allow horizontal scrolling
            child: Row(
              children: categories
                  .map((category) => CategoryButton(category: category))
                  .toList(),
            ),
          ),
          
          // Uncomment the following part if you want to display popular results
          /* 
          SizedBox(height: 16.h),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 16.w),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Popular Results",
                style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(height: 8.h),
          
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              padding:  EdgeInsets.symmetric(horizontal: 16.w),
              itemBuilder: (context, index) {
                return Card(
                  margin:  EdgeInsets.symmetric(vertical: 8.h),
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: ListTile(
                    leading: Container(
                      width: 50.w,
                      height: 50.h,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      child: Icon(Icons.image, color: Colors.grey[700]),
                    ),
                    title: Text(
                      "Product ${index + 1}",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text("Description of product ${index + 1}."),
                    trailing: Icon(Icons.arrow_forward_ios, size: 16.sp),
                  ),
                );
              },
            ),
          ),
          */
        ],
      ),
    );
  }
}
