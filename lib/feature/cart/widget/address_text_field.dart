import 'package:flutter/material.dart';

class AddressTextField extends StatelessWidget {
   AddressTextField({super.key, required this.hint, required this.label, required this.errormsg});
   final String hint;
   final String label;
   final String errormsg;
final TextEditingController TextFields = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextFormField(
                  controller: TextFields,
                  decoration: InputDecoration(
                    hintText: '$hint',
                    labelText: '$label',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return '$errormsg';
                    }
                    return null;
                  },
                ),
    );
  }
}