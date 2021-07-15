import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          constraints: BoxConstraints.expand(),
          padding: EdgeInsets.fromLTRB(20, 100, 20, 30),
          color: Colors.black,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Hello :)',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold)),
              Text('Welcome Back',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold)),
              SizedBox(height: 25),
              Text('USERNAME',
                  style: TextStyle(color: Colors.grey, fontSize: 15)),
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Enter username'),
              ),
              SizedBox(height: 20),
              Text('PASSWORD',
                  style: TextStyle(color: Colors.grey, fontSize: 15)),
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Enter password'),
              ),
              SizedBox(height: 20),
              Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  Container(
                    constraints: BoxConstraints.expand(height: 50),
                    decoration: new BoxDecoration(
                        color: Colors.blueAccent,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.all(Radius.circular(6))),
                  ),
                  Text('SIGN IN',
                      style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold))
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Text('NEW USER? ',
                      style: TextStyle(color: Colors.grey, fontSize: 10)),
                  Text(' SIGN UP',
                      style: TextStyle(color: Colors.blueAccent, fontSize: 10)),
                  SizedBox(width: 100),
                  Text('FORGOT PASSWORD',
                      style: TextStyle(color: Colors.blueAccent, fontSize: 10)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
