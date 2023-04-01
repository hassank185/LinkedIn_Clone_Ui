


import 'package:flutter/material.dart';
import 'package:linked_in_clone/const/app_const.dart';
import 'package:linked_in_clone/features/domain/entities/network_data.dart';
import 'package:linked_in_clone/global/style.dart';

class SingleNetworkCardWidget extends StatelessWidget {
  final NetworkData network;
  const SingleNetworkCardWidget({Key? key, required this.network}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return     Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Stack(
        children: [
          Positioned(
              child: Container(
                height: 60,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.vertical(top: Radius.circular(10))),
                child: ClipRRect(
                    borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                    child: Image.asset(
                      network.bgImage!,
                      fit: BoxFit.fill,
                    )),
              )),
          Positioned(
              top: 20,
              right: 10,
              left: 10,
              child: CircleAvatar(
                backgroundImage: AssetImage(network.profileUrl!),
                radius: 45,
              )),
          Positioned(
              right: 3,
              top: 3,
              child: Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                    color: Colors.black45,
                    borderRadius: BorderRadius.circular(30)),
                child: Icon(
                  Icons.close,
                  color: Colors.white,
                  size: 20,
                ),
              )),
          Positioned(
            bottom: 28,
            left: 10,
            right: 10,
            child: Column(
              children: [
                Text(
                  network.username!,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                sizeVer(5),
                Text(
                  network.description!,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 14, color: Colors.black54),
                ),
                sizeVer(5),
                Text(
                  "${network.connections!} mutual Connections",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.black54,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                sizeVer(5),
                Container(
                  height: 30,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: kPrimaryColor)),
                  child: Center(
                      child: Text(
                        "Connect",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: kPrimaryColor),
                      )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
