
 import 'package:flutter/material.dart';

void main() => runApp(day1());

class day1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Flutter Demo day01',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHome(title: '小明同学',),
    );
  }
}

class MyHome extends StatefulWidget{
  var title;

  MyHome({Key key, this.title}) : super(key : key);

  @override

  MyHomeState createState() =>  MyHomeState();
 }

 class MyHomeState extends State<MyHome>{

  int counter = 0;
    void incrementCounter(){
      setState(() {
        counter++;

      });
    }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
          title : Text(widget.title),
      ),
      body: Center(
          child : Column(
              mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                '第一天学习Flutter',
              ),
              Text(
                '$counter',
                    style: Theme.of(context).textTheme.display3,
              ),


            ],
          ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,

      floatingActionButton: Container(
       // onPressed: () => print("FloatingActionButton"),
         margin: EdgeInsets.only(top: 90),
        child: FloatingActionButton.extended(
          onPressed: incrementCounter,

          label: Text("button"),
          icon: Icon(Icons.add),
          tooltip: "按这么长时间干嘛",
          foregroundColor: Colors.black87,
          backgroundColor: Colors.cyan,
         // shape: RoundedRectangleBorder(),
        ),

      ),

    );
  }

 }



