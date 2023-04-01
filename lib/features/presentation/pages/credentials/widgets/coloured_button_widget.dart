


import 'package:flutter/material.dart';
import 'package:linked_in_clone/global/style.dart';

class ColouredButtonWidget extends StatelessWidget {
  final VoidCallback press;
  final String? text;
  const ColouredButtonWidget({Key? key, required this.press, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return    InkWell(
      onTap: press,
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Center(
            child: Text(
              "$text",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w500),
            )),
      ),
    );
  }
}
