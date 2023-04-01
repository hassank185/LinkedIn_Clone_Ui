import 'package:flutter/material.dart';
import 'package:linked_in_clone/features/app/routes/on_generate_route.dart';
import 'package:linked_in_clone/features/app/splash_screen/splash_screen.dart';
import 'package:linked_in_clone/features/presentation/pages/starting_page/starting_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LinkedIn Clone',
      onGenerateRoute: OnGenerateRoute.route,
      routes: {
        "/": (context) {
          return SplashScreen(
            child: StartingPage(),
          );

        }
      },
    );
  }
}
