import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internintellgence_furnitureapp/core/providers/cart_provider.dart';
import 'package:internintellgence_furnitureapp/feature/cart/widget/cart_divider.dart';
import 'package:internintellgence_furnitureapp/feature/cart/widget/cart_listtile.dart';
import 'package:internintellgence_furnitureapp/feature/cart/widget/custom_buttons.dart';
import 'package:internintellgence_furnitureapp/feature/cart/widget/total_price.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Cart"),
        centerTitle: true,
      ),
      body: cartProvider.cartProducts.isEmpty
          ? Center(
              child: Text(
                "Your cart is empty!",
                style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
              ),
            )
          : SingleChildScrollView(
              child: Column(
                children: [
                  // ListView.builder wrapped in a Container with fixed height or expanded space
                  ListView.builder(
                    shrinkWrap: true, // This will prevent ListView from taking full height
                    physics: NeverScrollableScrollPhysics(), // Disables internal scrolling
                    itemCount: cartProvider.cartCount,
                    itemBuilder: (context, index) {
                      final product = cartProvider.cartProducts[index];

                      return Dismissible(
                        key: ValueKey(product.name), // Unique key for each item
                        direction: DismissDirection.endToStart, // Swipe direction
                        background: Container(
                          color: Colors.red,
                          alignment: Alignment.centerRight,
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Icon(
                            Icons.delete,
                            color: Colors.white,
                          ),
                        ),
                        onDismissed: (direction) {
                          cartProvider.removeProduct(product); // Remove the item from cart
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text("${product.name} removed from cart."),
                              duration: Duration(seconds: 2),
                            ),
                          );
                        },
                        child: CartListtile(product: product, index: index),
                      );
                    },
                  ),
                  // These widgets will stay static and will not repeat
                  CartDivider(),
                  TotalPrice(),
                  CustomButtons(),
                ],
              ),
            ),
    );
  }
}
