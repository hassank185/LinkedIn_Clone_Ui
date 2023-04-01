import 'package:flutter/material.dart';
import 'package:linked_in_clone/const/app_const.dart';
import 'package:linked_in_clone/features/presentation/pages/credentials/widgets/coloured_button_widget.dart';
import 'package:linked_in_clone/global/style.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "assets/LinkedIn-logo.png",
              width: 120,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Forgot password?",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 33),
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              "Reset password in two quick steps",
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(
              height: 25,
            ),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Email or Phone"
              ),
            ),
            SizedBox(height: 20,),
            ColouredButtonWidget(press: (){},text: "Reset password",)
          ],
        ),
      ),
    );
  }
}
