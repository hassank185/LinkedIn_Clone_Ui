


import 'package:flutter/material.dart';
import 'package:linked_in_clone/const/app_const.dart';
import 'package:linked_in_clone/features/presentation/pages/credentials/add_email_page.dart';
import 'package:linked_in_clone/features/presentation/pages/credentials/forgot_password_page.dart';
import 'package:linked_in_clone/features/presentation/pages/credentials/join_now_page.dart';
import 'package:linked_in_clone/features/presentation/pages/credentials/set_password_page.dart';
import 'package:linked_in_clone/features/presentation/pages/credentials/sign_in_page.dart';
import 'package:linked_in_clone/features/presentation/pages/credentials/sign_up_page.dart';
import 'package:linked_in_clone/features/presentation/pages/starting_page/starting_page.dart';

class OnGenerateRoute {
  static Route<dynamic>? route(RouteSettings settings) {
    switch (settings.name) {
    // Initial Screens

      case PageConst.startingPage:{
          return routeBuilder(StartingPage());
        }
        case PageConst.setPasswordPage:{
          return routeBuilder(SetPasswordPage());
        }
        case PageConst.addEmailPage:{
          return routeBuilder(AddEmailPage());
        }

      case PageConst.forgotPage:{
          return routeBuilder(ForgotPasswordPage());
        }
      case PageConst.signUpPage:{
          return routeBuilder(SignUpPage());
        }
      case PageConst.joinPage:{
          return routeBuilder(JoinNowPage());
        }

      case PageConst.signInPage:
        {
          return routeBuilder(SignInPage());
        }
      default:
        {
          ErrorPage();
        }

    }
  }
}

dynamic routeBuilder(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}

class ErrorPage extends StatelessWidget {
  const ErrorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Error"),
      ),
      body: Center(
        child: Text("Error"),
      ),
    );
  }
}
