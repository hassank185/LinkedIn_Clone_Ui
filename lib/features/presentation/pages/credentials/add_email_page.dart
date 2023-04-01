import 'package:flutter/material.dart';
import 'package:linked_in_clone/const/app_const.dart';
import 'package:linked_in_clone/features/presentation/pages/credentials/widgets/coloured_button_widget.dart';
import 'package:linked_in_clone/features/presentation/widgets/form_container_widget.dart';

class AddEmailPage extends StatelessWidget {
  const AddEmailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 35),
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
              "Add your email or phone",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 33),
            ),
            SizedBox(
              height: 30,
            ),
            FormContainerWidget(hintText: "Email or Phone"),
            SizedBox(
              height: 20,
            ),
            ColouredButtonWidget(
              press: () {
                Navigator.pushNamed(context, PageConst.setPasswordPage);
              },
              text: "Continue",
            ),
          ],
        ),
      ),
    );
  }
}
