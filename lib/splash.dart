import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/images/bg_splash.avif'),
          fit: BoxFit.cover,
        )),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(32),
                  bottomRight: Radius.circular(32)),
              child: Image.asset('assets/images/splash.png',
                  fit: BoxFit.cover,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 1.8),
            ),
            Center(
              child: Column(
                children: const [
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 32.0, vertical: 32),
                    child: Text(
                      'Discover your \nFoods tour Here',
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 32),
                    child: Text(
                      'Explore all the most exiting foods based on your interest.',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 32.0),
              width: MediaQuery.of(context).size.width / 1.5,
              height: 48,
              child: InkWell(
                onTap: () => Navigator.pushNamed(context, '/login'),
                child: Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(left: 8),
                    height: 54,
                    // width: MediaQuery.of(context).size.width - 96,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.cyan,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 1,
                            blurRadius: 30,
                            offset: const Offset(
                                1, 1), // changes position of shadow
                          ),
                        ],
                        borderRadius: BorderRadius.circular(8)),
                    child: const Text(
                      'Get Started',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                          color: Colors.white),
                    ),
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
