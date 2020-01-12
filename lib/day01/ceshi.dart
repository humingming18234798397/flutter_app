import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "FloatingActionButton",
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;
  List _pageList = [
    Page("闲鱼页面"),
    Page("鱼塘页面"),
    Page("发布页面"),
    Page("消息"),
    Page("我的")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageList[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.yellow,
        onTap: (int index) {
          setState(() {
            this._currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("闲鱼", style: TextStyle(color: Colors.black54))),
          BottomNavigationBarItem(
              icon: Icon(Icons.category),
              title: Text("鱼塘", style: TextStyle(color: Colors.black54))),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              title: Text("发布", style: TextStyle(color: Colors.black54))),
          BottomNavigationBarItem(
              icon: Icon(Icons.message),
              title: Text("消息", style: TextStyle(color: Colors.black54))),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              title: Text("我的", style: TextStyle(color: Colors.red))),
        ],
      ),
      floatingActionButton: Container(
        margin: EdgeInsets.only(top: 5),
        child: FloatingActionButton(
          child: Icon(Icons.add, color: Colors.black54),
          backgroundColor: Colors.yellow,
          onPressed: () {
            setState(() {
              this._currentIndex = 2;
            });
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class Page extends StatelessWidget {
  String text;

  Page(this.text);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(text),
    );
  }
}