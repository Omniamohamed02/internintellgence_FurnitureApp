import 'package:flutter/material.dart';
import 'package:internintellgence_furnitureapp/core/providers/category_provider.dart';
import 'package:internintellgence_furnitureapp/feature/cart/cart_screen.dart';
import 'package:internintellgence_furnitureapp/feature/home/home_screen.dart';
import 'package:internintellgence_furnitureapp/feature/profile/profile_screen.dart';
import 'package:internintellgence_furnitureapp/feature/search/search_screen.dart';
import 'package:provider/provider.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({super.key});

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int _CurrentIndex = 0;
  PageController _pageController = PageController();
  bool IsIconBold = false;

  void _onItemTapped(int index) {
    setState(() {
      _CurrentIndex = index;
    });
    _pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CategoryProvider>(
      builder: (context, categoryProductProvider, child) {
      

        return Scaffold(
          body: PageView(
            controller: _pageController,
            children: [
              HomeScreen(), 
              SearchScreen(), 
              CartScreen(), 
              ProfileScreen(), 
            ],
            onPageChanged: (index) {
              setState(() {
                _CurrentIndex = index;
              });
            },
          ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            selectedItemColor: Color(0xffF6AC10),
            unselectedItemColor: Colors.grey,
            currentIndex: _CurrentIndex,
            onTap: _onItemTapped,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart),
                label: 'Cart',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_outline),
                label: 'Profile',
              ),
            ],
          ),
        );
      }
    );
  }
}
