import 'package:blood_bank/Screens/login_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double fullHeight = MediaQuery.of(context).size.height;
    double fullWidth = MediaQuery.of(context).size.width;
    final List<String> menu = [
      'hello1',
      'hello1',
      'hello1',
      'hello1',
      'hello1',
      'hello1',
    ];
    final List<String> bloodType = [
      'A+',
      'B+',
      'O+',
      'AB+',
      'A-',
      'B-',
      'O-',
      'AB-',
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Sri Radhe'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.supervised_user_circle),
            onPressed: () =>
                Navigator.of(context).pushNamed(LoginScreen.routeName),
            iconSize: 40,
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 40),
              child: Text(
                'Menu',
                style: TextStyle(
                  fontSize: 40,
                ),
              ),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('tile1'),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('tile2'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('tile3'),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.black)),
              height: fullHeight * 0.3,
              width: fullWidth,
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              margin: EdgeInsets.symmetric(vertical: 20, horizontal: 5),
              child: GridView.builder(
                itemCount: menu.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 1.4,
                  crossAxisCount: 3,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 30,
                ),
                itemBuilder: (ctx, i) => Container(
                  child: Text(menu[i]),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                  ),
                ),
              ),
            ),
            Container(
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.black)),
              height: fullHeight * 0.2,
              width: fullWidth,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.symmetric(vertical: 20, horizontal: 5),
              child: GridView.builder(
                itemCount: bloodType.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 3 / 2,
                  crossAxisCount: 4,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 25,
                ),
                itemBuilder: (ctx, i) => Container(
                  child: Text(bloodType[i]),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
