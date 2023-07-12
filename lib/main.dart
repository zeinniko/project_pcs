import 'package:flutter/material.dart'; 
 
class MateriPage extends StatelessWidget { 
  @override 
  Widget build(BuildContext context) { 
    return Scaffold( 
      appBar: AppBar( 
        title: Text('Halaman Materi'), 
      ), 
      body: Container( 
        padding: EdgeInsets.all(20), 
        child: Column( 
          crossAxisAlignment: CrossAxisAlignment.stretch, 
          children: [ 
            MenuItem( 
              title: 'Menu 1', 
              onTap: () { 
                // Logika ketika menu 1 dipilih 
              }, 
            ), 
            MenuItem( 
              title: 'Menu 2', 
              onTap: () { 
                // Logika ketika menu 2 dipilih 
              }, 
            ), 
            MenuItem( 
              title: 'Menu 3', 
              onTap: () { 
                // Logika ketika menu 3 dipilih 
              }, 
            ), 
            MenuItem( 
              title: 'Menu 4', 
              onTap: () { 
                // Logika ketika menu 4 dipilih 
              }, 
            ), 
          ], 
        ), 
      ), 
    ); 
  } 
} 
 
class MenuItem extends StatelessWidget { 
  final String title; 
  final VoidCallback onTap; 
 
  const MenuItem({required this.title, required this.onTap}); 
 
  @override 
  Widget build(BuildContext context) { 
    return GestureDetector( 
      onTap: onTap, 
      child: Container( 
        margin: EdgeInsets.only(bottom: 10), 
        padding: EdgeInsets.all(10), 
        decoration: BoxDecoration( 
          color: Colors.grey[200], 
          borderRadius: BorderRadius.circular(5), 
        ), 
        child: Text( 
          title, 
          style: TextStyle(fontSize: 18), 
        ), 
      ), 
    ); 
  } 
}