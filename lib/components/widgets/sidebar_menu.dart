import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';

class SideBarMenu extends StatefulWidget {
  SideBarMenu({Key? key, this.callBack, this.index = 0}) : super(key: key);
  final callBack;
  int index = 0;

  @override
  State<StatefulWidget> createState() {
    return _SideBarMenuState();
  }
}

class _SideBarMenuState extends State<SideBarMenu> {
  SimpleHiddenDrawerController? controller;

  @override
  void didChangeDependencies() {
    controller = SimpleHiddenDrawerController.of(context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xFFFFFFFF),
        ),
        child: Column(
          children: [
            InkWell(
              onTap: () => widget.callBack(4),
              child: Container(
                margin: const EdgeInsets.only(top: kToolbarHeight * 1.2),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8, bottom: 32),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(30)),
                          child: Image.network(
                            'https://www.thesprucepets.com/thmb/y4YEErOurgco9QQO-zJ6Ld1yVkQ=/3000x0/filters:no_upscale():strip_icc()/english-dog-breeds-4788340-hero-14a64cf053ca40f78e5bd078b052d97f.jpg',
                            width: 48,
                            height: 48,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8, top: 2),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Duy Anh',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                            ),
                            Text(
                              'email@gmail.com',
                              style:
                                  TextStyle(fontSize: 14, color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                      padding: EdgeInsets.only(bottom: 8),
                      child: Text(
                        'BROWSER',
                        style: TextStyle(fontSize: 12, color: Colors.black),
                      )),
                  Container(
                    decoration: BoxDecoration(
                        color: widget.index == 0 ? Colors.black12 : null,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8))),
                    child: TextButton(
                        onPressed: () {
                          widget.callBack(0);
                        },
                        child: Row(
                          children: const [
                            Icon(CupertinoIcons.home, color: Colors.black),
                            Padding(
                              padding: EdgeInsets.only(left: 16, top: 2),
                              child: Text(
                                'Home',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black),
                              ),
                            )
                          ],
                        )),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: widget.index == 1 ? Colors.black12 : null,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8))),
                    child: TextButton(
                        onPressed: () {
                          widget.callBack(1);
                        },
                        child: Row(
                          children: const [
                            Icon(CupertinoIcons.search, color: Colors.black),
                            Padding(
                              padding: EdgeInsets.only(left: 16, top: 2),
                              child: Text(
                                'Search',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black),
                              ),
                            )
                          ],
                        )),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: widget.index == 2 ? Colors.black12 : null,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8))),
                    child: TextButton(
                        onPressed: () {
                          widget.callBack(2);
                        },
                        child: Row(
                          children: const [
                            Icon(CupertinoIcons.star, color: Colors.black),
                            Padding(
                              padding: EdgeInsets.only(left: 16, top: 2),
                              child: Text(
                                'Favorite',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black),
                              ),
                            )
                          ],
                        )),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: widget.index == 3 ? Colors.black12 : null,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8))),
                    child: TextButton(
                        onPressed: () {
                          widget.callBack(3);
                        },
                        child: Row(
                          children: const [
                            Icon(CupertinoIcons.list_dash, color: Colors.black),
                            Padding(
                              padding: EdgeInsets.only(left: 16, top: 2),
                              child: Text(
                                'News',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black),
                              ),
                            )
                          ],
                        )),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  const Padding(
                      padding: EdgeInsets.only(bottom: 8),
                      child: Text(
                        'OTHERS',
                        style: TextStyle(fontSize: 12, color: Colors.black),
                      )),
                  Container(
                    decoration: BoxDecoration(
                        color: widget.index == 3 ? Colors.black12 : null,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8))),
                    child: TextButton(
                        onPressed: () {
                          // callBack(3);
                        },
                        child: Row(
                          children: const [
                            Icon(Icons.notifications_outlined,
                                color: Colors.black),
                            Padding(
                              padding: EdgeInsets.only(left: 16, top: 2),
                              child: Text(
                                'Notifications',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black),
                              ),
                            )
                          ],
                        )),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: widget.index == 3 ? Colors.black12 : null,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8))),
                    child: TextButton(
                        onPressed: () {
                          // callBack(3);
                        },
                        child: Row(
                          children: const [
                            Icon(CupertinoIcons.settings, color: Colors.black),
                            Padding(
                              padding: EdgeInsets.only(left: 16, top: 2),
                              child: Text(
                                'Settings',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black),
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
                          Icon(Icons.logout_outlined, color: Colors.red),
                          Padding(
                            padding: EdgeInsets.only(left: 16, top: 2),
                            child: Text(
                              'Logout',
                              style: TextStyle(fontSize: 16, color: Colors.red),
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
                  child: const Text(
                    'Version: 1.0',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
