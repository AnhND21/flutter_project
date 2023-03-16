// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter_application/account/screens/account.dart';
import 'package:flutter_application/cart/screens/cart.dart';
import 'package:flutter_application/chat/screens/chat.dart';
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
        drawer: Drawer(
          child: Column(
            children: [
              Container(
                alignment: Alignment.bottomRight,
                child: Stack(children: [
                  ClipRRect(
                    child: Image.network(
                      'https://media.istockphoto.com/id/517188688/photo/mountain-landscape.jpg?s=612x612&w=0&k=20&c=A63koPKaCyIwQWOTFBRWXj_PwCrR4cEoOw2S9Q7yVl8=',
                      fit: BoxFit.cover,
                      // height: 200,
                      // width: 200,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8, bottom: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(30)),
                            child: Image.network(
                              'https://www.thesprucepets.com/thmb/y4YEErOurgco9QQO-zJ6Ld1yVkQ=/3000x0/filters:no_upscale():strip_icc()/english-dog-breeds-4788340-hero-14a64cf053ca40f78e5bd078b052d97f.jpg',
                              width: 48,
                              height: 48,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Duy Anh',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                              Text(
                                'email@gmail.com',
                                style: TextStyle(
                                    fontSize: 14, color: Colors.white),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ]),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: selectedIndex == 4 ? Colors.black12 : null,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(8))),
                      child: TextButton(
                          onPressed: () {
                            navigatorToScreen(4);
                          },
                          child: Row(
                            children: const [
                              Icon(Icons.account_box),
                              Padding(
                                padding: EdgeInsets.only(left: 8, top: 4),
                                child: Text(
                                  'Account',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                              )
                            ],
                          )),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: selectedIndex == 0 ? Colors.black12 : null,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(8))),
                      child: TextButton(
                          onPressed: () {
                            navigatorToScreen(0);
                          },
                          child: Row(
                            children: const [
                              Icon(Icons.home),
                              Padding(
                                padding: EdgeInsets.only(left: 8, top: 4),
                                child: Text(
                                  'Home',
                                  style: TextStyle(fontSize: 16),
                                ),
                              )
                            ],
                          )),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: selectedIndex == 1 ? Colors.black12 : null,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(8))),
                      child: TextButton(
                          onPressed: () {
                            navigatorToScreen(1);
                          },
                          child: Row(
                            children: const [
                              Icon(Icons.message),
                              Padding(
                                padding: EdgeInsets.only(left: 8, top: 4),
                                child: Text(
                                  'Chat',
                                  style: TextStyle(fontSize: 16),
                                ),
                              )
                            ],
                          )),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: selectedIndex == 2 ? Colors.black12 : null,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(8))),
                      child: TextButton(
                          onPressed: () {
                            navigatorToScreen(2);
                          },
                          child: Row(
                            children: const [
                              Icon(Icons.shopping_cart),
                              Padding(
                                padding: EdgeInsets.only(left: 8, top: 4),
                                child: Text(
                                  'Cart',
                                  style: TextStyle(fontSize: 16),
                                ),
                              )
                            ],
                          )),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: selectedIndex == 3 ? Colors.black12 : null,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(8))),
                      child: TextButton(
                          onPressed: () {
                            navigatorToScreen(3);
                          },
                          child: Row(
                            children: const [
                              Icon(Icons.notifications),
                              Padding(
                                padding: EdgeInsets.only(left: 8, top: 4),
                                child: Text(
                                  'Notification',
                                  style: TextStyle(fontSize: 16),
                                ),
                              )
                            ],
                          )),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.restorablePopAndPushNamed(context, '/');
                        },
                        child: Row(
                          children: const [
                            Icon(Icons.logout_outlined),
                            Padding(
                              padding: EdgeInsets.only(left: 8, top: 4),
                              child: Text(
                                'Logout',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            )
                          ],
                        )),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 24),
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    child: const Text('Version: 1.0'),
                  ),
                ),
              )
            ],
          ),
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
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message),
              label: 'Chat',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_rounded),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: 'Notification',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
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
