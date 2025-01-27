
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CallToAction extends StatelessWidget {
  const CallToAction(
      {super.key, required this.Sentence, required this.ButtonName, required this.Navigate});
  final Widget Navigate;
  final String Sentence;
  final String ButtonName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '$Sentence',
            style: TextStyle(color: Colors.black),
          ),
          Flexible(
            child: TextButton(
              onPressed: () {
              Navigator.push(
                     context,
                    MaterialPageRoute(
                 builder: (context) =>  Navigate,
              ),
                   );
              },
              child: Text(
                '$ButtonName',
                style: TextStyle(color: Color(0xffC19A6B),fontSize: 12.sp),maxLines: 1,
              ),
            ),
          )
        ],
      ),
    );
  }
}
