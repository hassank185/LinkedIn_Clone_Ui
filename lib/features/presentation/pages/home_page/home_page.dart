import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:linked_in_clone/features/domain/entities/user_post_data.dart';
import 'package:linked_in_clone/features/presentation/pages/home_page/widgets/single_post_card_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScrollController? _scrollController;
  final _userPost = UserPostClass.userPostList;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(

              child: ListView.builder(
                controller: _scrollController,
                itemCount: _userPost.length,
                itemBuilder: (context, index) {
                  final userPostData = _userPost[index];
                  return SinglePostCardWidget(userPostData: userPostData);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
