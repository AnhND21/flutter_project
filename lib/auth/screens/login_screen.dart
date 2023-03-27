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
  bool _isLoading = false;
  @override
  void initState() {
    super.initState();
    _email = widget.email;
  }

  Future<void> onSignIn() async {
    setState(() {
      _isLoading = true;
    });
    Future.delayed(
        const Duration(seconds: 5),
        () => {
              setState(() {
                _isLoading = false;
                Navigator.pushNamed(context, '/root');
              })
            });
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
          child: ConstrainedBox(
            constraints:
                BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
            child: Container(
              height: MediaQuery.of(context).size.height,
              padding: const EdgeInsets.only(top: 64),
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('assets/images/bg.png'),
                fit: BoxFit.cover,
              )),
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                child: Padding(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    children: [
                      Container(
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
                        margin: const EdgeInsets.only(top: 40),
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
                            // obscuringCharacter: "*",
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
                          _email.isNotEmpty ? onSignIn() : {};
                        },
                        child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: _email.isNotEmpty
                                  ? Colors.cyan
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
                            child: _isLoading
                                ? const SizedBox(
                                    width: 20,
                                    height: 20,
                                    child: CircularProgressIndicator(
                                      strokeWidth: 2,
                                      color: Colors.white,
                                    ),
                                  )
                                : const Text(
                                    'Sign In',
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600),
                                  )),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 64,
                            height: 1,
                            decoration:
                                const BoxDecoration(color: Colors.black),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8),
                            child: Text(
                              'Or continue with',
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Container(
                            width: 64,
                            height: 1,
                            decoration: const BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(16),
                                    bottom: Radius.circular(16))),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        margin: const EdgeInsets.only(bottom: 8),
                        padding: const EdgeInsets.all(16),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                        ),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/google.png',
                                fit: BoxFit.cover,
                                width: 30,
                                height: 30,
                              ),
                              const Expanded(
                                flex: 1,
                                child: Padding(
                                  padding: EdgeInsets.only(right: 16.0),
                                  child: Text(
                                    'Sign in with Google',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w600),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ]),
                      ),
                      Container(
                        margin: const EdgeInsets.only(bottom: 8),
                        padding: const EdgeInsets.all(16),
                        decoration: const BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                        ),
                        child: Row(
                          children: [
                            Image.asset('assets/images/facebook.png',
                                fit: BoxFit.contain, width: 30, height: 30),
                            const Expanded(
                              flex: 1,
                              child: Padding(
                                padding: EdgeInsets.only(right: 16.0),
                                child: Text(
                                  'Sign in with Facebook',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(16),
                        decoration: const BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                        ),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/apple.png',
                                fit: BoxFit.cover,
                                width: 30,
                                height: 30,
                                color: Colors.white,
                              ),
                              const Expanded(
                                flex: 1,
                                child: Padding(
                                  padding: EdgeInsets.only(right: 16.0),
                                  child: Text(
                                    'Sign in with Apple',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ]),
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
