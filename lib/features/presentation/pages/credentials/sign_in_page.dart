import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:linked_in_clone/const/app_const.dart';
import 'package:linked_in_clone/features/presentation/pages/credentials/forgot_password_page.dart';
import 'package:linked_in_clone/features/presentation/pages/credentials/sign_up_page.dart';
import 'package:linked_in_clone/features/presentation/pages/credentials/widgets/coloured_button_widget.dart';
import 'package:linked_in_clone/features/presentation/pages/main_screen/main_screen.dart';
import 'package:linked_in_clone/features/presentation/widgets/button_container_widget.dart';
import 'package:linked_in_clone/features/presentation/widgets/form_container_widget.dart';
import 'package:linked_in_clone/global/style.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool remember = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 35),
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
                        Navigator.pushNamed(context, PageConst.signUpPage );
                      },
                      child: Text(
                        "Join LikedIn",
                        style: TextStyle(
                            color: kPrimaryColor, fontWeight: FontWeight.w600),
                      ))
                ],
              ),
              SizedBox(
                height: 30,
              ),
              FormContainerWidget(hintText: "Email or Phone"),
              SizedBox(height: 15),
              FormContainerWidget(hintText: "Password*"),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Checkbox(
                    activeColor: Colors.green[900],
                    value: remember,
                    onChanged: (bool? value) {
                      setState(() {
                        remember = value!;
                      });
                    },
                  ),
                  Text(
                    "Remember me.",
                    style: TextStyle(fontSize: 16, color: Colors.grey[800]),
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Text(
                    "Learn more",
                    style: TextStyle(
                        color: kPrimaryColor,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, PageConst.forgotPage );
                  }
                ,
                  child: Text(
                    "Forget Password?",
                    style: TextStyle(
                        color: kPrimaryColor,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  )),
              SizedBox(
                height: 25,
              ),
              ColouredButtonWidget(press: (){Navigator.push(context, MaterialPageRoute(builder: (_) => MainPage()));},text: "Continue",),
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
                icon: FontAwesomeIcons.apple,
                text: "Sign with apple",
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
          ),
        ),
      ),
    );
  }
}
