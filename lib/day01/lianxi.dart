
     import 'package:flutter/material.dart';

void main() => runApp(lianxi());

class lianxi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "Flutter Demo lianxi",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomees(title : '胡少',),
    );
  }
}

class MyHomees extends StatefulWidget {
  final String title;

  MyHomees({Key key,this.title}): super(key : key);
  @override
 MyHomeState createState() => MyHomeState();
// MyHomeState createState() => MyHomeState();
}
class MyHomeState extends State<MyHomees>{
  int count = 0;
  void incount(){
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '练习'
            ),
            Text(
              '$count',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      floatingActionButton: Container(
        margin: EdgeInsets.only(top: 100),
        child:FloatingActionButton.extended(
            onPressed: incount,
          label: Text("button"),
          tooltip: "胡少",
          icon: Icon(Icons.add),
          foregroundColor: Colors.black87,
          backgroundColor: Colors.cyan,

        ),
      ),
    );
  }

}