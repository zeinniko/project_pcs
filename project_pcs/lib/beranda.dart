import 'package:flutter/material.dart';
import 'package:project_pcs/materi.dart';
import 'package:project_pcs/setting.dart';
import 'package:project_pcs/profil.dart';

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
            ElevatedButton(onPressed: (){
              
                  Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Materi()));
            }, child: Text('Materi')),
            ElevatedButton(onPressed: (){
              
                  Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Materi()));
            }, child: Text('Tambah materi')),
            ElevatedButton(onPressed: (){
              
                  Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Profil()));
            }, child: Text('Profile')),
            ElevatedButton(onPressed: (){
              
                  Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Setting()));
            }, child: Text('Pengaturan')),
          ],
        )
      ));
  }
}