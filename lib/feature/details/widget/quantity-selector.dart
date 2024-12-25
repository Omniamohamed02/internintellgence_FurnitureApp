import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internintellgence_furnitureapp/feature/details/details_screen.dart';

class QuantitySelector extends StatefulWidget {
  final double pricePerItem;
  final ValueChanged<double> onTotalPriceChanged;

  const QuantitySelector({
    super.key,
    required this.pricePerItem,
    required this.onTotalPriceChanged,
  });

  @override
  _QuantitySelectorState createState() => _QuantitySelectorState();
}

class _QuantitySelectorState extends State<QuantitySelector> {
 int quantity = 1;

  void _incrementQuantity() {
    setState(() {
      quantity++;
    });
    widget.onTotalPriceChanged(quantity * widget.pricePerItem);
  }

  void _decrementQuantity() {
    if (quantity > 1) {
      setState(() {
        quantity--;
      });
      widget.onTotalPriceChanged(quantity * widget.pricePerItem);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 10,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          GestureDetector(
            onTap: _decrementQuantity,
            child: Container(
              width: 15.w,
              height: 15.h,
              decoration: BoxDecoration(
                               shape: BoxShape.circle,
              ),
              child: Icon(Icons.remove,size: 20,),
            ),
          ),
          SizedBox(width: 5.w),
          Text(
            quantity.toString(),
            style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
          ),
          SizedBox(width: 5.w),
          GestureDetector(
            onTap: _incrementQuantity,
            child: Container(
              width: 15.w,
              height: 15.h,
              decoration: BoxDecoration(
                
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.add, size: 20,),
            ),
          ),
        ],
      ),
    );
  }
}
