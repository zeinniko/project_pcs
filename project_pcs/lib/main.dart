import 'package:flutter/material.dart';
import 'package:project_pcs/constants.dart';
import 'routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: home,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}
