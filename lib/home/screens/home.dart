// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final String email = '';
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  late String _email;
  @override
  void initState() {
    super.initState();
    _email = widget.email;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(0),
          child: AppBar(
            // Here we create one to set status bar color
            elevation: 0,
            backgroundColor: Colors
                .white, // Set any color of status bar you want; or it defaults to your theme's primary color
          )),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: SingleChildScrollView(
          physics: null,
          child: ConstrainedBox(
            constraints:
                BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(
                        top: 24,
                      ),
                      child: const Text(
                        'Welcome Back, Boss 👋',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            color: Colors.blue),
                      ),
                    ),
                    const Text(
                      'We happy to see you again. To use your account, you should log in first.',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
