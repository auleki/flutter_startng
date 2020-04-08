import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'AuKoda Test APP',
    home: LoginScreen(),
  ));
}

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Widget _buildEmailLTF() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Email',
          style: TextStyle(
            fontSize: 18.0,
            color: Colors.white,
            // fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Container(
            alignment: Alignment.centerLeft,
            // decoration: BoxDecorationStyle,
            height: 60.0,
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14.0),
                prefixIcon: Icon(
                  Icons.email,
                  color: Colors.white,
                ),
                hintText: 'Type in your email',
                // hintStyle: HintTextStyle,
              ),
            ))
      ],
    );
  }

  Widget _buildPasswordLTF() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Password',
          style: TextStyle(
            fontSize: 18.0,
            color: Colors.white,
            fontFamily: 'OpenSans',
            // fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Container(
            alignment: Alignment.centerLeft,
            // decoration: BoxDecorationStyle,
            height: 60.0,
            child: TextField(
              obscureText: true,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14.0),
                prefixIcon: Icon(
                  Icons.lock,
                  color: Colors.white,
                ),
                hintText: 'Type in your password',
                // hintStyle: HintTextStyle,
              ),
            ))
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF73AEF5),
                Color(0xFF61A4F1),
                Color(0xFF478DE0),
                Color(0xFF398AE5),
              ],
              stops: [0.1, 0.4, 0.7, 0.9],
            )),
          ),
          Container(
              height: double.infinity,
              child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 40.0,
                    vertical: 120.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'OpenSans',
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 30.0),
                      _buildEmailLTF(),
                      SizedBox(height: 30.0),
                      _buildPasswordLTF(),
                    ],
                  )))
        ],
      ),
    );
  }
}
