import 'package:flutter/material.dart';
import 'dart:async';

import 'package:project_pcs/beranda.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  void initState() {
    super.initState();
    startLaunching();
  }

  startLaunching() async {
    var duration = const Duration(seconds: 5);
    return Timer(
      duration,
      () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (_) {
              return Beranda();
            },
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          margin: EdgeInsets.only(top: 100.0),
          child: Center(
            child: Column(
              children: [
                Text(
                  'LEARNING',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Times New Roman'),
                ),
              ],
            ),
          )),
    );
  }
}