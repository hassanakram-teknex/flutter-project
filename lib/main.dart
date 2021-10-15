import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: EdgeInsets.all(10),
          child: ListView(
            children: <Widget>[
              Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Create account',
                    style: TextStyle(
                        // color: Colors.blue,
                        fontWeight: FontWeight.w300,
                        fontSize: 30),
                  )),
              Container(
                // alignment: Alignment.center,
                padding: EdgeInsets.all(10),
                child: GestureDetector(
                    onTap: () {
                      print('alreadu have an account button pressed');
                    },
                    child: Text(
                      'Already have an account',
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 15,
                          color: Colors.blue.shade300),
                    )),
              ),
              Container(
                padding: EdgeInsets.all(5),
                child: TextFormField(
                  validator: (value) {
                    if (value.isEmpty) {
                      return "* Required";
                    } else
                      return null;
                  },
                  controller: nameController,
                  decoration: InputDecoration(
                    hintText: 'Enter Email Adress',
                    border: OutlineInputBorder(),
                    // labelText: 'User Name',
                  ),
                ),
              ),

              Align(
                alignment: Alignment.bottomCenter,
                child: GestureDetector(
                  onTap: () {
                    print('continue btn pressed');
                  },
                  child: Container(
                      margin: EdgeInsets.only(top: 5, left: 5, right: 5),
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.blue.shade300,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                          child: Text("Continue",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.white)))),
                ),
              )
            ],
          )),
    );
  }
}
