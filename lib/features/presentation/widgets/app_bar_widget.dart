





import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:linked_in_clone/const/app_const.dart';

PreferredSizeWidget appBarWidget({VoidCallback? onTap, String? title,bool? isJobTab}){
  return AppBar(
    backgroundColor: Colors.white70,
    elevation: 0,
    leading: GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.only(left: 10),
       child: CircleAvatar(backgroundImage: AssetImage("assets/profiles/myprofile.JPG"),)
      ),
    ),
    title: Container(
      height: 40,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey[400],
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextFormField(
        decoration: InputDecoration(
            hintText: "$title",
            border: InputBorder.none,
            prefixIcon: Icon(Icons.search)
        ),
      ),
    ),
    actions: [
      isJobTab == false?Icon(Icons.message_outlined,size: 28,color: Colors.grey,)
          : Row(
        children: [
          Icon(Icons.more_vert,size: 28,color: Colors.grey),
          sizeHor(10),
          Icon(Icons.message_outlined,size: 28,color: Colors.grey)
        ],
      ),
      sizeHor(10)
    ],
  );
}