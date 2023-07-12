import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:project_pcs/helpers/dbhelper.dart';
import 'package:project_pcs/models/materi.dart';
import 'package:project_pcs/ui/entryform.dart';
import 'dart:async';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  DbHelper dbHelper = DbHelper();
  int count = 0;
  List<Materi> materiList = [];

 @override
  void initState() {
    super.initState();
    updateListView(); // Loading the diary when the app starts
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SQLite'),
      ),
      body: createListView(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        tooltip: 'Tambah Data',
        onPressed: () async {
          var materi = await navigateToEntryForm(context, Materi('', ''));
          if(materi.name != '' && materi.keterangan != '') addMateri(materi);
        },
      ),
    );
  }

  Future<Materi> navigateToEntryForm(BuildContext context, Materi materi) async {
    var result = await Navigator.push(
      context, 
      MaterialPageRoute(builder: (BuildContext context){ return EntryForm(materi: materi); })
      );
    return result;
  }

  ListView createListView(){
    return ListView.builder(
      itemCount: count,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          color: Colors.white,
          elevation: 2.0,
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.red,
              child: Icon(Icons.people),
            ),
          title: Text(this.materiList[index].name),
          subtitle: Text(this.materiList[index].keterangan),
          trailing: GestureDetector(
            child: Icon(Icons.delete),
            onTap: () {
              deleteMateri(materiList[index]);
            },
          ),
          onTap: () async {
            var materi = await navigateToEntryForm(context, this.materiList[index]);
            if(materi.name != '' && materi.keterangan != '') editMateri(materi);
          },
          ),      
        );
      },
    );
  }

  void addMateri(Materi object) async {
    int result = await dbHelper.insert(object);
    if (result > 0) {
      updateListView();      
    }
  }

  void editMateri(Materi object) async {
    int result = await dbHelper.update(object);
    if (result > 0) {
      updateListView();      
    }
  }

  void deleteMateri(Materi object) async {
    int result = await dbHelper.delete(object.id);
    if (result > 0) {
      updateListView();      
    }
  }

  void updateListView(){
    final Future<Database> dbFuture = dbHelper.initDb();
    dbFuture.then((database) {
      Future<List<Materi>> materiListFuture = dbHelper.getMateriList();
      materiListFuture.then((materiList){
        setState(() {
          this.materiList = materiList;
          this.count = materiList.length;
        });
      });
    });
  }
}