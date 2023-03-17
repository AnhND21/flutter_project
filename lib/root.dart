// ignore_for_file: must_be_immutable
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/account/screens/account.dart';
import 'package:flutter_application/cart/screens/cart.dart';
import 'package:flutter_application/chat/screens/chat.dart';
import 'package:flutter_application/components/widgets/sidebar_menu.dart';
import 'package:flutter_application/home/screens/home.dart';
import 'package:flutter_application/notifications/screens/notifications.dart';

class RootScreen extends StatefulWidget {
  final String email = '';
  const RootScreen({super.key});
  @override
  State<RootScreen> createState() => _RootScreen();
}

class _RootScreen extends State<RootScreen> {
  int selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    ChatScreen(),
    CartScreen(),
    NotificationScreen(),
    AccountScreen()
  ];
  @override
  void initState() {
    super.initState();
  }

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  void navigatorToScreen(int index) {
    Navigator.pop(context);
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        drawerEnableOpenDragGesture: true,
        endDrawer: Drawer(
          child: SideBarMenu(callBack: navigatorToScreen, index: selectedIndex),
        ),
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(0),
            child: AppBar(
              // Here we create one to set status bar color
              elevation: 0,
              backgroundColor: Colors
                  .white, // Set any color of status bar you want; or it defaults to your theme's primary color
            )),
        body: Center(
          child: _widgetOptions.elementAt(selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.star),
              label: 'Favorite',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.news),
              label: 'News',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.person),
              label: 'Account',
            ),
          ],
          currentIndex: selectedIndex,
          selectedItemColor: Colors.blue[600],
          onTap: _onItemTapped,
          unselectedItemColor: Colors.black54,
        ),
      ),
    );
  }
}

class SideBarMenu2 {}
