import 'package:flutter/material.dart';
import 'package:linked_in_clone/const/app_const.dart';
import 'package:linked_in_clone/features/presentation/pages/credentials/widgets/coloured_button_widget.dart';
import 'package:linked_in_clone/features/presentation/widgets/form_container_widget.dart';
import 'package:linked_in_clone/global/style.dart';

class SetPasswordPage extends StatelessWidget {
  const SetPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "assets/LinkedIn-logo.png",
              width: 90,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Set your password",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 33),
            ),
            sizeVer(60),
            FormContainerWidget(hintText: "Email",),
            sizeVer(20),
            FormContainerWidget(hintText: "Password",isPasswordField: true,),
            sizeVer(15),
            Column(
              children: [
                Row(
                  children: [
                    Text("You agree to the LinkedIn",style: TextStyle(color: Colors.grey),),
                    sizeHor(5),
                    Text("User Agreement .",style: TextStyle(color: kPrimaryColor),),
                  ],
                ), Row(
                  children: [
                    Text("Privacy Policy",style: TextStyle(color: kPrimaryColor)),
                    sizeHor(5),
                    Text("and"),
                    sizeHor(5),
                    Text("Cookie Policy.",style: TextStyle(color: kPrimaryColor)),
                  ],
                ),

              ],
            ),
            sizeVer(20),
            ColouredButtonWidget(press: (){},text: "Agree & Join",)
          ],
        ),
      ),
    );
  }
}
