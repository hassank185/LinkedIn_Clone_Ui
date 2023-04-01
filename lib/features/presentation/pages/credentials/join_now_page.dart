import 'package:flutter/material.dart';

import 'package:linked_in_clone/features/presentation/pages/credentials/add_email_page.dart';

import 'package:linked_in_clone/features/presentation/widgets/form_container_widget.dart';
import 'package:linked_in_clone/global/style.dart';

class JoinNowPage extends StatelessWidget {
  const JoinNowPage({Key? key}) : super(key: key);

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
              "Add your name",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 33),
            ),
            SizedBox(
              height: 40,
            ),
            FormContainerWidget(hintText: "First Name*"),
            SizedBox(
              height: 40,
            ),
            FormContainerWidget(hintText: "Last Name*"),
            SizedBox(
              height: 25,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => AddEmailPage()));
              },
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                    child: Text(
                  "Continue",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

