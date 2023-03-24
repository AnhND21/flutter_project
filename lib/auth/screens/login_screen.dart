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
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: SingleChildScrollView(
            physics: null,
            child: ConstrainedBox(
              constraints:
                  BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
              child: Container(
                padding: const EdgeInsets.only(top: 64),
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('assets/images/bg_splash.jpeg'),
                  fit: BoxFit.cover,
                )),
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
                          'Hello Again, Boss 👋',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 16.0),
                        child: Text(
                          "Welcome back you've \nbeen missed!",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w300),
                          textAlign: TextAlign.center,
                        ),
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
                            decoration: const InputDecoration(
                              suffixText: '@gmail.com',
                              filled: true,
                              fillColor: Colors.white,
                              hintText: 'Enter email',
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 16, horizontal: 16), //Imp Line
                              isDense: true,
                              border: OutlineInputBorder(
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
                                color: Colors.black38,
                              ),
                              filled: true,
                              fillColor: Colors.white,
                              hintText: 'Password',
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
                            'Recovery Password',
                            style: TextStyle(
                                color: Colors.grey[600],
                                fontWeight: FontWeight.w600),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, '/forgot_password');
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/root');
                        },
                        child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: _email.isNotEmpty
                                  ? Colors.black87
                                  : Colors.black12,
                              border: const Border(),
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
                            alignment: Alignment.center,
                            height: 58,
                            child: const Text(
                              'Sign In',
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
                                onPressed: () {
                                  Navigator.pushNamed(context, '/signup');
                                },
                                child: const Text('Sign up'))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
