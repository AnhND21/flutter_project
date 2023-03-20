import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/home/widgets/menu_action.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';

class HomeScreen extends StatefulWidget {
  final String email = '';
  final Function callBack;

  const HomeScreen({Key? key, required this.callBack}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  List<Widget> listMenu = <Widget>[
    MenuAction(title: 'Highlands', icon: Icons.co2),
    MenuAction(title: 'KFC', icon: Icons.kitesurfing),
    MenuAction(title: 'McDonals', icon: Icons.donut_small_outlined),
    MenuAction(title: 'Milk Tea', icon: Icons.terrain),
    MenuAction(title: 'Pizza', icon: Icons.local_pizza),
    MenuAction(title: 'Fruits', icon: Icons.front_hand_outlined),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        // Here we create one to set status bar color
        toolbarOpacity: 0, toolbarHeight: 0,
        excludeHeaderSemantics: true,
        backgroundColor: Colors
            .transparent, // Set any color of status bar you want; or it defaults to your theme's primary color
      ),
      body: RefreshIndicator(
        onRefresh: () async {},
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(bottom: 100),
          physics: const AlwaysScrollableScrollPhysics(),
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 40,
                          height: 40,
                          child: InkWell(
                            onTap: () =>
                                SimpleHiddenDrawerController.of(context)
                                    .toggle(),
                            child: const Icon(
                              CupertinoIcons.text_alignright,
                              size: 24,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: Container(
                      margin: const EdgeInsets.only(top: 16),
                      child: Column(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(top: 8),
                            child: Text('All your need, \none app',
                                style: TextStyle(
                                    fontSize: 32, fontWeight: FontWeight.bold)),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      margin: const EdgeInsets.only(top: 16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(32)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 1,
                            blurRadius: 30,
                            offset: const Offset(
                                1, 1), // changes position of shadow
                          ),
                        ],
                      ),
                      child: InkWell(
                        onTap: () {
                          widget.callBack();
                        },
                        child: Row(children: const [
                          Icon(
                            CupertinoIcons.search,
                            size: 20,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text('Search...')
                        ]),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 32),
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Row(
                      children: const [
                        Expanded(
                          child: Text(
                            'WHAT DO YOU NEED?',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: GridView.count(
                      controller: ScrollController(keepScrollOffset: false),
                      physics: const NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      crossAxisCount: 3,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 0.1,
                      shrinkWrap: true,
                      childAspectRatio: 1,
                      children: List.generate(listMenu.length, (index) {
                        return listMenu.elementAt(index);
                      }),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
