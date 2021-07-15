import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(width: 120,height: 120,color: Colors.green),
              Container(width: 100,height: 100,color: Colors.pink),
              Container(width: 80,height: 80,color: Colors.black),
            ],
          ),
        ),
      ),
    );
  }

}

/*class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Container(
                width: 400,
                height: 400,
                color: Colors.red,
              ),
              Container(
                width: 300,
                height: 300,
                color: Colors.green,
              ),
              Container(
                width: 200,
                height: 200,
                color: Colors.blue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}*/

/*class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            alignment: AlignmentDirectional.center,
            transform: new Matrix4.rotationZ(30 * pi / 180),
            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            decoration: new BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
                border: Border.all(
                    style: BorderStyle.solid, color: Colors.yellow, width: 5)),
            */ /*BoxDecoration(
                color: Colors.blue,
              borderRadius: BorderRadius.all(Radius.circular(20)),
              border: Border.all(
                width: 2, color: Colors.yellow,style: BorderStyle.solid
              )
            ),*/ /*
            width: 200,
            height: 200,
            child: Text(
              'hashMap',
              style: TextStyle(fontSize: 23, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}*/
