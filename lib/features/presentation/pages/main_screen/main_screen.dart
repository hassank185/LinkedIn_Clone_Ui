



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:linked_in_clone/features/presentation/pages/Notification_page/notification_page.dart';
import 'package:linked_in_clone/features/presentation/pages/home_page/home_page.dart';
import 'package:linked_in_clone/features/presentation/pages/jobs_page/jobs_page.dart';
import 'package:linked_in_clone/features/presentation/pages/my_network_page/my_network_page.dart';
import 'package:linked_in_clone/features/presentation/pages/post_page/post_page.dart';
import 'package:linked_in_clone/features/presentation/widgets/app_bar_widget.dart';
import 'package:linked_in_clone/features/presentation/widgets/drawer_widget.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentPageIndex = 0;
  GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldState,
      drawer: DrawerWidget(),
      appBar: _currentPageIndex ==4?appBarWidget(title: "Search Jobs",isJobTab: true,onTap: (){setState(() {
        _scaffoldState.currentState!.openDrawer();
      });}): appBarWidget(
        title: "Search",
        isJobTab: false,
          onTap: (){setState(() {
            _scaffoldState.currentState!.openDrawer();
          });}
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentPageIndex,
        onTap: (index){
          setState(() {
            _currentPageIndex = index;
          });
        },
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        selectedLabelStyle: TextStyle(color: Colors.black,fontSize: 12),
        unselectedItemColor: Colors.grey,
        unselectedLabelStyle: TextStyle(color: Colors.grey,fontSize: 12),
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.house_fill),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.userGroup),
            label: "Network",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box),
            label: "Post",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: "Notification",
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.briefcase),
            label: "Jobs",
          ),
        ],
      ),
      body: _switchPage(_currentPageIndex),
    );
  }
  _switchPage(int index){
    switch (index) {
      case 0:
        {
          return HomePage();
        }case 1:
        {
          return MyNetworkPage();
        }case 2:
        {
          return PostPage(
          );
        }case 3:
        {
          return NotificationPage();
        }case 4:
        {
          return JobsPage();
        }
    }
  }
}
