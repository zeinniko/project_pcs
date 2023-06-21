import 'package:flutter/material.dart';

class Beranda extends StatefulWidget {
  const Beranda({super.key});

  @override
  State<Beranda> createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LEARNING'),
        centerTitle: true,
      ),
      body: Container(
        child: ListView(
          children: [
            ElevatedButton(onPressed: (){}, child: Text('Materi')),
            ElevatedButton(onPressed: (){}, child: Text('Berita')),
            ElevatedButton(onPressed: (){}, child: Text('Profile')),
            ElevatedButton(onPressed: (){}, child: Text('Pengaturan')),
          ],
        )
      ));
  }
}