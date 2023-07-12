import 'package:flutter/material.dart';
import 'package:project_pcs/setDb/dbHelper.dart';
import 'package:project_pcs/beranda.dart';

class LoginPage extends StatefulWidget {
  static String tag = 'login-page';
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                labelText: 'Username',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () async {
                String username = _usernameController.text;
                String password = _passwordController.text;

                DatabaseHelper databaseHelper = DatabaseHelper.instance;

                User? user = await databaseHelper.getUser(username, password);

                if (user != null) {
                  print('Login berhasil! Welcome, ${user.username}!');
                  Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Beranda()));
                } else {
                  print('Username atau password salah!');
                }
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
