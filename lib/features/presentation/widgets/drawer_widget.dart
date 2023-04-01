import 'package:flutter/material.dart';
import 'package:linked_in_clone/const/app_const.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        sizeVer(40),
                        Container(
                          width: 90,
                          height: 90,
                          child: CircleAvatar(backgroundImage: AssetImage("assets/profiles/myprofile.JPG"),),
                        ),
                        sizeVer(10),
                        Text(
                          "Muhammad Hassan",
                          style:
                              TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                        ),
                        sizeVer(5),
                        Text(
                          "View profile",
                          style:
                              TextStyle(color: Colors.grey,fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                  sizeVer(10),
                  Divider(color: Colors.grey,),
                  sizeVer(30),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      "Groups",
                      style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                    ),
                  ),
                  sizeVer(30),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      "Events",
                      style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Divider(color: Colors.grey,),
          Padding(
            padding: EdgeInsets.only(bottom: 30, left: 20),
            child: Column(
              children: [
                sizeVer(20),
                Row(
                  children: [
                    Icon(
                      Icons.settings,
                      size: 30,
                      color: Colors.grey,
                    ),
                    sizeHor(10),
                    Text(
                      "Settings",
                      style: TextStyle(

                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
