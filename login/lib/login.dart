import 'package:flutter/material.dart';

void main() {
  runApp(LoginApp());
}

class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 120, left: 24, right: 24),
          child: Center(
            child: Column(
              children: [
                Text(
                  'Login',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        fillColor: Color(0xffF1F0F5),
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(),
                        ),
                        labelText: 'Username',
                      ),
                    ),
                    Divider(),
        TextFormField(
                      decoration: InputDecoration(
                        fillColor: Color(0xffF1F0F5),
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(),
                        ),
                        labelText: 'Password',
                      ),
                    ),
                    Divider(),
            RaisedButton(
                          onPressed: () {
                            print("Raised Button");
                          },
                          color: Colors.blue,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          child: Text(
                            'Log In',
                            style: TextStyle(color: Colors.white),
                          ),
                        )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}