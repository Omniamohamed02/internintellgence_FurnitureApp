import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internintellgence_furnitureapp/core/providers/cart_provider.dart';
import 'package:provider/provider.dart';

class TotalPrice extends StatelessWidget {
  const TotalPrice({super.key});

  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context);

    
    final subTotal = cartProvider.cartProducts.fold<double>(
      0.0,
      (previousValue, product) => previousValue + product.price,
    );

    const shipping = 20.0; 
    final total = subTotal + shipping; 

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Item Sub-Total',
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
              Text(
                '\$${subTotal.toStringAsFixed(2)}',
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Shipping',
                style: TextStyle(
                  fontSize: 16.sp,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '\$${shipping.toStringAsFixed(2)}',
                style: TextStyle(
                  fontSize: 16.sp,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Divider(
              color: Colors.grey,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total',
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '\$${total.toStringAsFixed(2)}',
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
