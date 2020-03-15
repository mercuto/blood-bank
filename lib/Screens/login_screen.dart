import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = 'login-screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var _isLogin = true;
  var _userId = TextEditingController();
  var _password = TextEditingController();
  var _confirmPassword = TextEditingController();

  void _switchLoginStatus(bool status) {
    setState(() {
      _isLogin = status;
    });
  }

  @override
  Widget build(BuildContext context) {
    double fullHeight = MediaQuery.of(context).size.height;
    double fullWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Container(
          height: fullHeight * 0.4,
          width: fullWidth * 0.8,
          child: Card(
            child: Container(
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  TextField(
                    controller: _userId,
                    decoration: InputDecoration(labelText: 'User ID'),
                  ),
                  TextField(
                    controller: _password,
                    decoration: InputDecoration(labelText: 'Password'),
                  ),
                  _isLogin
                      ? SizedBox(height: 0)
                      : TextField(
                          controller: _confirmPassword,
                          decoration:
                              InputDecoration(labelText: 'Confirm Password'),
                        ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      FlatButton(
                        child: Text('Login'),
                        onPressed: () => _switchLoginStatus(true),
                      ),
                      FlatButton(
                        child: Text('Sign Up'),
                        onPressed: () => _switchLoginStatus(false),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            elevation: 0,
            color: Colors.black12,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.of(context).pop(),
        child: Icon(Icons.arrow_back),
      ),
    );
  }
}
