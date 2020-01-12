import 'package:dio/dio.dart';

import 'package:flutter/material.dart';

void main() => runApp(MyHome());

class MyHome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      //去掉右上角icon
      debugShowCheckedModeBanner: false,
      //AppBar颜色
      theme: ThemeData(
        primaryColor: Colors.cyanAccent,
      ),
      home: MyHomeList(),
    );
  }
}

class MyHomeList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return null ;
  }
}