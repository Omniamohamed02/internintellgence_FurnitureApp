import 'package:flutter/material.dart';
import 'package:internintellgence_furnitureapp/feature/custom_bottom_nav_bar.dart';


class PaymentScreen extends StatefulWidget {
  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  bool isCash = false; 
  final TextEditingController cardNumberController = TextEditingController();
  final TextEditingController expiryDateController = TextEditingController();
  final TextEditingController cvvController = TextEditingController();
  final TextEditingController cardHolderController = TextEditingController();

  void showSnackbarAndReturnHome(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Order confirmed successfully!'),
        duration: Duration(seconds: 2), 
      ),
    );

   
    Future.delayed(Duration(seconds: 2), () {
      Navigator.push(
         context,
                MaterialPageRoute(
                  builder: (context) => CustomBottomNavBar(),
                ),);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Choose Payment Method',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Switch(
                    value: isCash,
                    onChanged: (value) {
                      setState(() {
                        isCash = value;
                      });
                    },
                  ),
                  Text(
                    isCash ? 'Cash Payment' : 'Card Payment',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
              SizedBox(height: 20),
              if (!isCash)
                Column(
                  children: [
                    Center(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Image.asset(
                          'assets/image/visa.jpg',
                          height: 150,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    TextField(
                      controller: cardNumberController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: 'Card Number',
                        hintText: 'Enter your card number',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 16),
                    Row(
                      children: [
                        Expanded(
                          child: TextField(
                            controller: expiryDateController,
                            keyboardType: TextInputType.datetime,
                            decoration: InputDecoration(
                              labelText: 'Expiry Date',
                              hintText: 'MM/YY',
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                        SizedBox(width: 16),
                        Expanded(
                          child: TextField(
                            controller: cvvController,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              labelText: 'CVV',
                              hintText: 'XXX',
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    TextField(
                      controller: cardHolderController,
                      decoration: InputDecoration(
                        labelText: 'Card Holder Name',
                        hintText: 'Enter the card holder name',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 24),
                  ],
                ),
              if (isCash)
                Center(
                  child: Text(
                    'You have chosen Cash Payment',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ),
              Center(
                child: ElevatedButton(
                  onPressed: (){
                    showSnackbarAndReturnHome(context);
                  },
                  style: ElevatedButton.styleFrom(
                    padding:
                        EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: Text(
                    isCash ? 'Confirm Payment' : 'Pay Now',
                    style: TextStyle(fontSize: 16,color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
