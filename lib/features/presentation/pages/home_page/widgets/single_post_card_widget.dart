


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:linked_in_clone/const/app_const.dart';
import 'package:linked_in_clone/features/domain/entities/user_post_data.dart';
import 'package:linked_in_clone/global/style.dart';

class SinglePostCardWidget extends StatelessWidget {
  final UserPostData userPostData;
  const SinglePostCardWidget({Key? key, required this.userPostData}) : super(key: key);

  @override
  Widget build(BuildContext context ) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
            child: Column(

              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(userPostData.profileUrl!),
                    ),
                    SizedBox(width: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          userPostData.name!,
                          style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          userPostData.headline!,
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black45,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Icon(CupertinoIcons.ellipsis_vertical),
                  ],
                ),
                sizeVer(8),
                Text(
                  userPostData.description!,
                  style: TextStyle(overflow: TextOverflow.ellipsis),
                ),
                Text(
                  userPostData.tags!,
                  style: TextStyle(
                      overflow: TextOverflow.ellipsis,
                      color: kPrimaryColor,
                      fontWeight: FontWeight.w500),
                ),

              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Image.asset(userPostData.image!),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 10,right: 10,top: 10),
            child: Row(children: [
              Container(
                height: 16,
                width: 16,

                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Image.asset("assets/likes/like_icon 1.png",color: Colors.white54,),
              ),

              Container(
                height: 16,
                width: 16,
                decoration: BoxDecoration(
                  color:Colors.redAccent,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Image.asset("assets/likes/like_icon 2.png",color: Colors.white,),
              ),
              Container(
                height: 16,
                width: 16,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Image.asset("assets/likes/like_icon 3.png"),
              ),
              sizeHor(6),
              Text(
                userPostData.likes!,
                style: TextStyle(fontSize: 12, color: Colors.black54),
              ),
              Spacer(),
              Text(
                userPostData.comments!,
                style: TextStyle(fontSize: 12, color: Colors.black54),
              ),
              sizeHor(4),
              Text(
                "comments",
                style: TextStyle(fontSize: 12, color: Colors.black54),
              ),
              sizeHor(4),
              Text(
                "-",
                style: TextStyle(fontSize: 12, color: Colors.black54),
              ),
              sizeHor(4),
              Text(
                userPostData.repost!,
                style: TextStyle(fontSize: 12, color: Colors.black54),
              )
            ]),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _rowButtons(icon: CupertinoIcons.hand_thumbsup, name: "Like"),
                _rowButtons(
                    icon: CupertinoIcons.chat_bubble_text, name: "Comment"),
                _rowButtons(icon: CupertinoIcons.repeat, name: "Repost"),
                _rowButtons(icon: Icons.send_rounded, name: "Send"),
              ],
            ),
          ),
          sizeVer(8),

          Divider(
            thickness: 8,

          )
        ],
      ),
    );
  }

  _rowButtons({String? name, IconData? icon}) {
    return Column(
      children: [
        Icon(icon, size: 18, color: Colors.black54),
        Text(
          "$name",
          style: TextStyle(fontSize: 10, color: Colors.black54),
        )
      ],
    );
  }
}
