import 'package:flutter/material.dart';
import 'package:linked_in_clone/const/app_const.dart';
import 'package:linked_in_clone/features/presentation/widgets/app_bar_widget.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {

  int selectedIndex = 0;

  void updateIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [_rowButtons()],
              ),
            )
          ],
        ),
      ),
    );
  }

  _rowButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        GestureDetector(
          onTap: () {
            updateIndex(0);
          },
          child: Container(
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                color: selectedIndex == 0 ? Colors.green : Colors.transparent,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                    color:
                        selectedIndex == 0 ? Colors.transparent : Colors.black54)),
            child: Text(
              "All",
              style: TextStyle(
                color: selectedIndex == 0 ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
        sizeHor(5),
        GestureDetector(
          onTap: () {
            updateIndex(1);
          },
          child: Container(
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                color: selectedIndex == 1 ? Colors.green : Colors.transparent,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                    color:
                        selectedIndex == 1 ? Colors.transparent : Colors.black54)),
            child: Text(
              "My Posts",
              style: TextStyle(
                color: selectedIndex == 1 ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
        sizeHor(5),
        GestureDetector(
          onTap: () {
            updateIndex(2);
          },
          child: Container(
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                color: selectedIndex == 2 ? Colors.green : Colors.transparent,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                    color:
                        selectedIndex == 2 ? Colors.transparent : Colors.black54)),
            child: Text(
              "Mentions",
              style: TextStyle(
                color: selectedIndex == 2 ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
