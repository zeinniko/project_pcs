import 'package:flutter/material.dart';

class Materi extends StatefulWidget {
  const Materi({super.key});

  @override
  State<Materi> createState() => _MateriState();
}

class _MateriState extends State<Materi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Materi'),
      ),
    );
  }
}