import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:linked_in_clone/const/app_const.dart';
import 'package:linked_in_clone/features/presentation/pages/credentials/join_now_page.dart';
import 'package:linked_in_clone/features/presentation/pages/credentials/sign_in_page.dart';
import 'package:linked_in_clone/features/presentation/pages/credentials/sign_up_page.dart';
import 'package:linked_in_clone/features/presentation/pages/credentials/widgets/coloured_button_widget.dart';
import 'package:linked_in_clone/features/presentation/widgets/button_container_widget.dart';
import 'package:linked_in_clone/global/style.dart';

class StartingPage extends StatelessWidget {
  const StartingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 40),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 140,
              ),
              Image.asset(
                "assets/LinkedIn-logo.png",
                width: 210,
              ),
              Text(
                "Join a trusted community of 800M professionals",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 22, color: Colors.grey[800]),
              ),
              Spacer(),
              ColouredButtonWidget(
                text: "Join Now",
                press: (){
                  Navigator.pushNamed(context, PageConst.joinPage);
                },),
              SizedBox(height: 15),
              ButtonContainerWidget(
                press: () {},
                text: "Join with Google",
                icon: FontAwesomeIcons.google,
              ),
              SizedBox(height: 15),
              ButtonContainerWidget(
                press: () {},
                text: "Join with Facebook",
                icon: FontAwesomeIcons.facebook,
              ),
              SizedBox(height: 20),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => SignInPage()));
                },
                child: Text(
                  "Sign In",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: kPrimaryColor),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
