import 'package:flutter/material.dart';
import 'beranda.dart';
import 'constants.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(builder: (context) => Beranda());
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
