import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuAction extends StatelessWidget {
  final String title;
  dynamic icon;
  MenuAction({Key? key, required this.title, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16),
      child: Column(children: [
        Container(
          width: 84,
          height: 84,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(42)),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 1,
                blurRadius: 30,
                offset: const Offset(1, 1), // changes position of shadow
              ),
            ],
          ),
          child: Icon(
            icon,
            color: Colors.blueAccent,
            size: 32,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text(
            title,
            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
        )
      ]),
    );
  }
}
