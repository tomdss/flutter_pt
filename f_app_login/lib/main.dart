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
          padding: EdgeInsets.fromLTRB(20, 0, 20, 150),
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  width: 70,
                  height: 70,
                  padding: EdgeInsets.all(15),
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 30),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Color(0xffe5e5e5)),
                  child: FlutterLogo()),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
                child: Text('Hello\nWelcome Back',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold)),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                child: TextField(
                  style: TextStyle(color: Colors.black, fontSize: 18),
                  decoration: InputDecoration(
                      labelText: 'USERNAME',
                      labelStyle: TextStyle(color: Colors.grey, fontSize: 16),
                      border: OutlineInputBorder(),
                      hintText: 'Enter username'),
                ),
              ),
              Stack(
                alignment: AlignmentDirectional.centerEnd,
                children: [
                  TextField(
                    style: TextStyle(color: Colors.black, fontSize: 18),
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: 'PASSWORD',
                        labelStyle: TextStyle(color: Colors.grey, fontSize: 16),
                        border: OutlineInputBorder(),
                        hintText: 'Enter password'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text('SHOW',
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 14,
                            fontWeight: FontWeight.bold)),
                  )
                ],
              ),
              SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                height: 56,
                child: RaisedButton(
                  color: Colors.blue,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  onPressed: onSignInClick,
                  child: Text('SIGN IN',style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 50,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('NEW USER? ',
                        style: TextStyle(color: Colors.grey, fontSize: 14,fontWeight: FontWeight.bold)),
                    Text(' SIGN UP',
                        style: TextStyle(color: Colors.blue, fontSize: 14,fontWeight: FontWeight.bold)),
                    SizedBox(width: 100),
                    Text('FORGOT PASSWORD',
                        style: TextStyle(color: Colors.blue, fontSize: 14,fontWeight: FontWeight.bold)),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void onSignInClick() {}
}
