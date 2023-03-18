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
      backgroundColor: Colors.white,
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(0),
          child: AppBar(
            // Here we create one to set status bar color
            backgroundColor: Colors
                .white, // Set any color of status bar you want; or it defaults to your theme's primary color
          )),
      body: RefreshIndicator(
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
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(100, 232, 232, 232),
                        borderRadius: BorderRadius.all(Radius.circular(32))),
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
                        Text('Search anything...')
                      ]),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 16),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(16)),
                      child: Image.network(
                          'https://helpx.adobe.com/content/dam/help/en/photoshop/using/convert-color-image-black-white/jcr_content/main-pars/before_and_after/image-before/Landscape-Color.jpg'),
                    ),
                  ),
                  const CategoryList(),
                  const SizedBox(
                    height: 16,
                  ),
                  const YouMayLikeList(),
                  const NewsList(),
                ],
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
