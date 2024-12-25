import 'package:flutter/material.dart';

class CartTitle extends StatelessWidget{
  const CartTitle({super.key});
  @override
  Widget build(BuildContext context) {
   return Center(
    child: const Text('Cart',
    style: TextStyle(
      fontSize: 24,fontWeight: FontWeight.bold),));
  }
}