import 'package:flutter/material.dart';
import 'package:internintellgence_furnitureapp/core/data/data_class.dart';
import 'package:internintellgence_furnitureapp/feature/details/widget/quantity-selector.dart';

class Price extends StatefulWidget {
  const Price({super.key, required this.product});
  final Product product;

  @override
  State<Price> createState() => _PriceState();
}

class _PriceState extends State<Price> {
  late double totalPrice;
  final int quantity =1;

  @override
  void initState() {
    super.initState();
    totalPrice = widget.product.price *quantity; 
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('\$${totalPrice}', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)), // عرض السعر الإجمالي
          QuantitySelector(
            pricePerItem: widget.product.price,  // استخدم سعر المنتج هنا
            onTotalPriceChanged: (newPrice) {
              setState(() {
                totalPrice = newPrice; // تحديث السعر الإجمالي بناءً على الكمية
              });
            },
          ),
        ],
      ),
    );
  }
}
