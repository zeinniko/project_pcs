import 'package:flutter/material.dart';
import 'beranda.dart';
import 'constants.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(builder: (context) => Beranda());
      case intro:
        return MaterialPageRoute(builder: (context) => Intro());
      case login:
        return MaterialPageRoute(builder: (context) => Login());
      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(
              child: Text('Halaman Tidak Ditemukan'),
            ),
          )
        );
    }
  }
}
