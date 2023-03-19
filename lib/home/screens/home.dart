import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/home/widgets/category_list.dart';
import 'package:flutter_application/home/widgets/news_list.dart';
import 'package:flutter_application/home/widgets/you_may_like_list.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        // Here we create one to set status bar color
        toolbarOpacity: 0, toolbarHeight: 0,
        excludeHeaderSemantics: true,
        backgroundColor: Colors
            .transparent, // Set any color of status bar you want; or it defaults to your theme's primary color
      ),
      body: Container(
        child: RefreshIndicator(
          onRefresh: () async {},
          child: SingleChildScrollView(
            padding: const EdgeInsets.only(bottom: 100),
            physics: const AlwaysScrollableScrollPhysics(),
            child: SizedBox(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Welcome,',
                              style: TextStyle(fontSize: 18),
                            ),
                            Text(
                              'Thoa Ette',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 40,
                          height: 40,
                          child: InkWell(
                            onTap: () => Scaffold.of(context).openEndDrawer(),
                            child: const Icon(
                              CupertinoIcons.text_alignright,
                              size: 24,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.all(16),
                      margin: const EdgeInsets.only(top: 12),
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
                    Container(
                      margin: const EdgeInsets.only(top: 16),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: Text('Category',
                                style: const TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold)),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.pinkAccent,
        child: const Icon(Icons.add),
      ),
    );
  }
}
