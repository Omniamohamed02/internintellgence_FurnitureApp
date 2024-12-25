import 'package:flutter/material.dart';

class CartDivider extends StatelessWidget {
  const CartDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: Divider(
        color: Colors.grey,
      ),);
  }
}