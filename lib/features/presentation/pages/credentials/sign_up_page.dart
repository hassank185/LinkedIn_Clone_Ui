import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:linked_in_clone/features/presentation/pages/credentials/widgets/coloured_button_widget.dart';
import 'package:linked_in_clone/features/presentation/widgets/button_container_widget.dart';
import 'package:linked_in_clone/features/presentation/widgets/form_container_widget.dart';
import 'package:linked_in_clone/global/style.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool showPasswordField = false;
  bool showBottomButtons = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: SingleChildScrollView(
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
                  "Sign in",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 33),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      "or",
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        "Sign in",
                        style: TextStyle(
                            color: kPrimaryColor, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                FormContainerWidget(
                  hintText: "Email or Password",
                  controller: emailController,
                ),
                SizedBox(height: 25),
                showPasswordField
                    ? FormContainerWidget(
                        hintText: "Password",
                        controller: passwordController,
                        isPasswordField: true,
                      )
                    : Container(),
                SizedBox(height: 25),
                ColouredButtonWidget(
                  text: "Continue",
                  press: () {
                    setState(() {
                      if (emailController.text.isEmpty) {
                        showPasswordField = false;
                      } else {
                        showPasswordField = true;
                        showBottomButtons = false;
                      }
                    });
                  },
                ),
                showBottomButtons ? _bottomButtons() : Container(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _bottomButtons() {
    return Column(
      children: [
        Row(children: [
          Expanded(
            child: new Container(
                margin: const EdgeInsets.only(right: 15.0),
                child: Divider(
                  color: Colors.black,
                  height: 36,
                )),
          ),
          Text("or"),
          Expanded(
            child: new Container(
                margin: const EdgeInsets.only(
                  left: 15.0,
                ),
                child: Divider(
                  color: Colors.black,
                  height: 36,
                )),
          ),
        ]),
        ButtonContainerWidget(
          press: () {},
          icon: FontAwesomeIcons.google,
          text: "Sign with Google",
        ),
        SizedBox(
          height: 15,
        ),
        ButtonContainerWidget(
          press: () {},
          icon: FontAwesomeIcons.facebook,
          text: "Sign with facebook",
        ),
      ],
    );
  }
}
