// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  final String email = '';
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreen();
}

class _LoginScreen extends State<LoginScreen> {
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
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 60),
                    child: Column(children: [
                      TextFormField(
                        textInputAction: TextInputAction.next,
                        textAlignVertical: TextAlignVertical.center,
                        style: const TextStyle(fontWeight: FontWeight.w500),
                        initialValue: _email,
                        onChanged: (value) => setState(() {
                          _email = value;
                        }),
                        decoration: InputDecoration(
                          suffixText: '@gmail.com',
                          suffixIcon: IconButton(
                            icon: const Icon(Icons.close),
                            hoverColor: Colors.transparent,
                            onPressed: () {
                              setState(() {
                                _email = '';
                              });
                            },
                          ),
                          filled: true,
                          fillColor: const Color.fromARGB(255, 240, 244, 255),
                          hintText: 'Enter your email',
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 16, horizontal: 16), //Imp Line
                          isDense: true,
                          border: const OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16))),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      TextFormField(
                        enableSuggestions: false,
                        autocorrect: false,
                        obscureText: true,
                        textInputAction: TextInputAction.next,
                        textAlignVertical: TextAlignVertical.center,
                        style: const TextStyle(fontWeight: FontWeight.w500),
                        obscuringCharacter: "*",
                        decoration: const InputDecoration(
                          suffixIcon: Icon(
                            Icons.remove_red_eye,
                            color: Colors.blue,
                          ),
                          filled: true,
                          fillColor: Color.fromARGB(255, 240, 244, 255),
                          hintText: 'Enter your password',
                          focusedErrorBorder: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 16, horizontal: 16), //Imp Line
                          isDense: true,
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16))),
                        ),
                      )
                    ]),
                  ),
                  Container(
                    alignment: Alignment.bottomRight,
                    child: TextButton(
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(color: Colors.grey[500]),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/home');
                    },
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.blue[600],
                          border: const Border(),
                        ),
                        alignment: Alignment.center,
                        height: 58,
                        child: const Text(
                          'Login',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        )),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  const Text(
                    'Sign in with social',
                    style: TextStyle(color: Colors.grey),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                          child: Container(
                        margin: const EdgeInsets.only(right: 8),
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(16)),
                            border: Border.all(
                                style: BorderStyle.solid,
                                width: 0.5,
                                color: Colors.blueAccent)),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.facebook,
                                color: Colors.blue,
                                size: 30,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 8),
                                child: Text(
                                  'Facebook',
                                  style: TextStyle(fontSize: 15),
                                ),
                              )
                            ]),
                      )),
                      Expanded(
                          child: Container(
                        margin: const EdgeInsets.only(left: 8),
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(16)),
                            border: Border.all(
                                style: BorderStyle.solid,
                                width: 0.5,
                                color: Colors.blueAccent)),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.network(
                                'http://pngimg.com/uploads/google/google_PNG19635.png',
                                fit: BoxFit.cover,
                                width: 30,
                                height: 30,
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 8),
                                child: Text(
                                  'Google',
                                  style: TextStyle(fontSize: 15),
                                ),
                              )
                            ]),
                      )),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Don't have an account?"),
                        TextButton(
                            onPressed: () {}, child: const Text('Sign up'))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
