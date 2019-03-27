import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final TextEditingController _userController = TextEditingController();
  final TextEditingController _passController = TextEditingController();
  String _textWelcome = "";

  void _showWelcome() {
    setState(() {
      if (_userController.text.isNotEmpty && _passController.text.isNotEmpty) {
        _textWelcome = _userController.text;
      } else {
        _textWelcome = "Wrong";
      }
    });
  }

  void _eraser() {
    setState(() {
      _userController.clear();
      _passController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign In"),
        backgroundColor: Colors.orange,
      ),
      backgroundColor: Colors.grey,
      body: ListView(
        children: <Widget>[
          Container(
            alignment: Alignment.topCenter,
            child: Column(
              children: <Widget>[
                Image.asset(
                  "img/face.png",
                  width: 90.0,
                  height: 90.0,
                  color: Colors.pink,
                ),
                Container(
                  height: 180.0,
                  width: 380.0,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        TextField(
                          controller: _userController,
                          decoration: InputDecoration(
                            hintText: "Username",
                            icon: Icon(Icons.person),
                          ),
                        ),
                        SizedBox(height: 10.0),
                        TextField(
                          controller: _passController,
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: "Password",
                            icon: Icon(Icons.lock),
                          ),
                        ),
                        SizedBox(height: 15.0),
                        //Padding(padding: EdgeInsets.all(8.0)),
                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Container(
                                child: RaisedButton(
                                  onPressed: _showWelcome,
                                  color: Colors.red,
                                  child: Text(
                                    "Sign in",
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                child: RaisedButton(
                                  onPressed: _eraser,
                                  color: Colors.red,
                                  child: Text(
                                    "Clear",
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Welcome $_textWelcome",
                      style: TextStyle(
                        color: Colors.yellow,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
