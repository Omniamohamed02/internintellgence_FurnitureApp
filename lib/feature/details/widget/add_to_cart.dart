import 'package:flutter/material.dart';
import 'package:internintellgence_furnitureapp/core/data/data_class.dart';
import 'package:internintellgence_furnitureapp/core/providers/cart_provider.dart';
import 'package:internintellgence_furnitureapp/feature/cart/cart_screen.dart';
import 'package:provider/provider.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({super.key, required this.product});
   final Product product;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: double.infinity,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      child: ElevatedButton(onPressed: (){
       Provider.of<CartProvider>(context, listen: false)
                    .addProduct(product);
  

              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("${product.name} added to cart!")),
              );
      }, child: Text('Add To Cart'),
      style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Color(0xffFABC3C))),),
    );
  }
}