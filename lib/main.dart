import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application/auth/screens/login_screen.dart';
import 'package:flutter_application/home/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black,
        fontFamily: 'Hind',
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginScreen(),
        '/home': (context) => const HomeScreen(),
      },
    );
  }
}

class FoodList extends StatelessWidget {
  const FoodList({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
    final double itemWidth = size.width / 1.5;

    return GridView.count(
        childAspectRatio: (itemWidth / itemHeight),
        controller: ScrollController(keepScrollOffset: false),
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        shrinkWrap: true,
        children: List.generate(3, (index) {
          return Stack(
            children: <Widget>[
              ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(16)),
                child: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLKuf_ULMF8ru3W0r3772W7ByYwHvNcxE4BV99a4Ht9BEbgtZHLsx98VZ-qGPZoszu_5w&usqp=CAU',
                  height: 250 * 2,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        margin: const EdgeInsets.only(top: 8, right: 8),
                        width: 28,
                        height: 28,
                        decoration: const BoxDecoration(
                            color: Colors.red,
                            borderRadius:
                                BorderRadius.all(Radius.circular(24))),
                        child: IconButton(
                            padding: const EdgeInsets.all(0),
                            icon: const Icon(Icons.bookmark),
                            color: Colors.white,
                            onPressed: () {},
                            iconSize: 16),
                      )),
                  Container(
                      padding: const EdgeInsets.all(12),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(18),
                            bottomRight: Radius.circular(18)),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.black12,
                            Colors.black,
                          ],
                        ),
                      ),
                      child: Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(bottom: 8),
                            child: Text(
                              'Ngọc Trinh trắng nhưng mà hơi...',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.fade,
                            ),
                          ),
                          Row(
                            children: [
                              ClipRRect(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(12)),
                                child: Image.network(
                                  'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                                  width: 18,
                                  height: 18,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const Padding(
                                  padding: EdgeInsets.only(left: 6),
                                  child: Text(
                                    'Cristiano Ronalre',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 14),
                                  ))
                            ],
                          )
                        ],
                      )),
                ],
              ))
            ],
          );
        }));
  }
}

class HorizontalFoodList extends StatelessWidget {
  const HorizontalFoodList({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemWidth = size.width;
    List array = List.generate(3, (index) => index + 1);
    return Container(
      height: 200,
      width: double.infinity,
      child: ListView.separated(
        padding: const EdgeInsets.all(0),
        itemCount: array.length,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return Container(
            width: 10,
            height: 1,
            color: Colors.transparent,
          );
        },
        itemBuilder: (context, index) {
          return Stack(
            alignment: Alignment.bottomLeft,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(16)),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width - 30,
                  child: Image.network(
                    'https://media-cldnry.s-nbcnews.com/image/upload/rockcms/2022-03/plant-based-food-mc-220323-02-273c7b.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                  width: MediaQuery.of(context).size.width - 30,
                  child: Container(
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(16),
                              bottomRight: Radius.circular(16)),
                          gradient: LinearGradient(
                            colors: [Colors.black12, Colors.black],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          )),
                      alignment: Alignment.bottomLeft,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Salad',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          Text(
                            '10.233 photos',
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          ),
                        ],
                      )))
            ],
          );
        },
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.transparent,
        backgroundColor: Colors.white,
        centerTitle: false,
        titleSpacing: 0,
        title: const Text(
          'Salad',
          textAlign: TextAlign.left,
          style: TextStyle(
              fontSize: 24, color: Colors.black, fontWeight: FontWeight.w400),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
            color: Colors.black,
            iconSize: 32,
          )
        ],
        automaticallyImplyLeading: true,
      ),
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: () async {
            await Future.delayed(const Duration(seconds: 1));
          },
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                const HorizontalFoodList(),
                Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(top: 16.0, bottom: 16.0),
                    child: Row(children: [
                      const Expanded(
                          child: Text(
                        'Sort by',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      )),
                      Row(children: const [
                        Text(
                          'Most Popular',
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.red,
                              fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.swap_vert_rounded,
                          color: Colors.red,
                        )
                      ])
                    ])),
                const FoodList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
