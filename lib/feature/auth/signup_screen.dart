import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internintellgence_furnitureapp/feature/auth/login_screen.dart';
import 'package:internintellgence_furnitureapp/feature/auth/widget/call_to_action.dart';
import 'package:internintellgence_furnitureapp/feature/auth/widget/custom_button.dart';
import 'package:internintellgence_furnitureapp/feature/auth/widget/custom_text_field.dart';
import 'package:internintellgence_furnitureapp/feature/auth/widget/divider.dart';
import 'package:internintellgence_furnitureapp/feature/auth/widget/name_text_Feild.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(30),
              child: Text('Signup',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,
                  fontSize: 24.sp,)),
            ),
            NameTextField(),
            CustomTextField(),
            CustomButton(ButtonName: 'Signup',),
            Dividers(),
            CallToAction(Sentence: 'Do you already have an account?', ButtonName: 'Login Now', Navigate: LoginScreen(),)
          ],
        ),
      ),
    );
  }
}