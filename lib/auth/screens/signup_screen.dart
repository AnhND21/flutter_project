import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  final String email = '';
  final String password = '';
  final String cPassword = '';
  final bool obscureTextPass = true;
  final bool obscureTextCPass = true;
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  String email = '';
  String password = '';
  String cPassword = '';
  bool obscureTextPass = true;
  bool obscureTextCPass = true;
  @override
  void initState() {
    super.initState();
    email = widget.email;
    password = widget.password;
    cPassword = widget.cPassword;
    obscureTextPass = widget.obscureTextPass;
    obscureTextCPass = widget.obscureTextCPass;
  }

  void onObscurePassword() {
    setState(() {});
  }

  void onChangeEmail(String text) {
    setState(() {
      email = text;
    });
  }

  void onChangePassword(String text) {
    setState(() {
      password = text;
    });
  }

  void onChangeConfirmPassword(String text) {
    setState(() {
      cPassword = text;
    });
  }

  Future<Map<String, String>> onSignUp() async {
    return <String, String>{
      "email": email,
      "password": password,
      "cPassword": cPassword
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg.png'),
            fit: BoxFit.cover,
          ),
        ),
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
        height: MediaQuery.of(context).size.height,
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: kToolbarHeight - 8,
                ),
                InkWell(
                  onTap: () => Navigator.pop(context),
                  child: const Icon(Icons.arrow_back),
                ),
                const SizedBox(
                  height: 32,
                ),
                const Text(
                  'Create an Account 👋🏻',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
                const Text(
                  'Create an accoount so you can do anything you want in your application.',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 60),
                  child: Column(children: [
                    TextFormField(
                      textInputAction: TextInputAction.next,
                      textAlignVertical: TextAlignVertical.center,
                      style: const TextStyle(fontWeight: FontWeight.w500),
                      initialValue: email,
                      onChanged: (value) => onChangeEmail(value),
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'Email',
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
                      obscureText: true,
                      textInputAction: TextInputAction.next,
                      textAlignVertical: TextAlignVertical.center,
                      style: const TextStyle(fontWeight: FontWeight.w500),
                      initialValue: password,
                      onChanged: (value) => onChangePassword(value),
                      decoration: const InputDecoration(
                        suffixIcon: Icon(
                          Icons.remove_red_eye_outlined,
                          color: Colors.black38,
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'Password',
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
                      initialValue: cPassword,
                      onChanged: (value) => onChangeConfirmPassword(value),
                      decoration: const InputDecoration(
                        suffixIcon: Icon(
                          Icons.remove_red_eye_outlined,
                          color: Colors.black38,
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'Confirm password',
                        focusedErrorBorder: InputBorder.none,
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
                      height: 48,
                    ),
                    InkWell(
                      onTap: () async {
                        final response = await onSignUp();
                        print(response);
                      },
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.redAccent,
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
                            'Continue',
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          )),
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                  ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
