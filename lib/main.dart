import 'package:flutter/material.dart';
import 'profil.dart';
import 'input.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: MainHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MainHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Cashier'),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              onDetailsPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Profil(),
                  ),
                );
              },
              accountName: Text('Nova Astria Lestari'),
              accountEmail: Text('novalestari674@gmail.com'),
              currentAccountPicture: Hero(
                tag: 'Profile',
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/gambar.jpg'),
                  radius: 50,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MainHome(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.supervised_user_circle),
              title: Text('Profil'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Profil(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: InputPage(),
    );
  }
}
