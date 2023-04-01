import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:linked_in_clone/const/app_const.dart';
import 'package:linked_in_clone/features/domain/entities/network_data.dart';
import 'package:linked_in_clone/features/presentation/pages/my_network_page/widgets/single_network_card_widget.dart';
import 'package:linked_in_clone/features/presentation/widgets/app_bar_widget.dart';
import 'package:linked_in_clone/global/style.dart';

class MyNetworkPage extends StatefulWidget {
  const MyNetworkPage({Key? key}) : super(key: key);

  @override
  State<MyNetworkPage> createState() => _MyNetworkPageState();
}

class _MyNetworkPageState extends State<MyNetworkPage> {
  final networkData = NetworkDataClass.networkData;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blue[800],
          onPressed: () {},
          child: Icon(Icons.person_add_alt_1_rounded),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              sizeVer(15),
              _rowWidget(
                  text: "Manage my Network", icon: Icons.arrow_forward_rounded),
              sizeVer(5),
              Divider(
                thickness: 7,
              ),
              _rowWidget(text: "Invitations", icon: Icons.arrow_forward_rounded),
              Divider(
                thickness: 7,
              ),
              sizeVer(5),
              Text(
                "People you know who also follow Google",
                style: TextStyle(fontSize: 18),
              ),
              sizeVer(20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    GridView.builder(
                      itemCount: networkData.length,
                      physics: ScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 0.7,
                        crossAxisSpacing: 0,
                        mainAxisSpacing: 0,
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        final network = networkData[index];
                        return SingleNetworkCardWidget(network: network);
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _rowWidget({String? text, IconData? icon}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "$text",
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w500, color: kPrimaryColor),
          ),
          Icon(icon),
        ],
      ),
    );
  }
}
