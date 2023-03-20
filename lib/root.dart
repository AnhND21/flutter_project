// ignore_for_file: must_be_immutable
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/account/screens/account.dart';
import 'package:flutter_application/cart/screens/cart.dart';
import 'package:flutter_application/components/widgets/sidebar_menu.dart';
import 'package:flutter_application/home/screens/home.dart';
import 'package:flutter_application/news/screens/news.dart';
import 'package:flutter_application/search/screens/search.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';

class RootScreen extends StatefulWidget {
  final String email = '';
  const RootScreen({super.key});
  @override
  State<RootScreen> createState() => _RootScreen();
}

class _RootScreen extends State<RootScreen> {
  int selectedIndex = 3;
  static final List<Widget> _widgetOptions = <Widget>[
    HomeScreen(
      callBack: () {},
    ),
    const SearchScreen(),
    const CartScreen(),
    const NewsScreen(),
    const AccountScreen()
  ];

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
        backgroundColor: Colors.white,
        drawerEnableOpenDragGesture: true,
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(0),
            child: AppBar(
              // Here we create one to set status bar color
              elevation: 0,
              backgroundColor: Colors
                  .white, // Set any color of status bar you want; or it defaults to your theme's primary color
            )),
        // body: HiddenDrawerMenu(
        //   screens: _widgetOptions,
        //   backgroundColorMenu: Colors.white,
        //   disableAppBarDefault: true,
        //   initPositionSelected: 0,
        //   slidePercent: 70,
        //   typeOpen: TypeOpen.FROM_RIGHT,
        // ),
        body: SimpleHiddenDrawer(
            slidePercent: 60,
            screenSelectedBuilder: (position, controller) {
              return _widgetOptions.elementAt(selectedIndex);
            },
            menu: SideBarMenu(
              callBack: navigatorToScreen,
              index: selectedIndex,
            )),
        bottomNavigationBar: Container(
          color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            child: GNav(
                curve: Curves.bounceIn,
                gap: 8,
                backgroundColor: Colors.black,
                color: Colors.white,
                activeColor: Colors.white,
                haptic: true,
                tabBorderRadius: 32,
                tabBackgroundColor: Colors.grey.withOpacity(0.3),
                padding: const EdgeInsets.all(16),
                onTabChange: (value) {
                  setState(() {
                    selectedIndex = value;
                  });
                },
                tabs: const [
                  GButton(
                    icon: Icons.home,
                    text: 'Home',
                  ),
                  GButton(
                    icon: Icons.search,
                    text: 'Search',
                  ),
                  GButton(
                    icon: Icons.star,
                    text: 'Faforite',
                  ),
                  GButton(
                    icon: Icons.list_alt,
                    text: 'News',
                  ),
                  GButton(
                    icon: Icons.person_2_outlined,
                    text: 'Profile',
                  )
                ]),
          ),
        ),
      ),
    );
  }
}

class SideBarMenu2 {}
