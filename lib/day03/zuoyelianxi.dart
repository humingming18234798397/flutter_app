

import 'package:flutter/material.dart';

  void main() => runApp(MyZuoYe());

class MyZuoYe extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.cyanAccent,
      ),
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('胡少'),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.add_a_photo),
              tooltip: "胡少",
              onPressed: null
          ),
        ],
      ),
     body: ListView(
       children: <Widget>[
         Image.asset('images/meinv.jpg',
           width: 500,
           height: 200,
        //适应
        //   fit:BoxFit.cover,
         ),
         //标题栏
         titleWidget,
         buttonWidget,
          StackWidget(),
       ],
     ),
    );

  }
}
Widget titleWidget = Container(
  padding: const EdgeInsets.only(left: 10),
  child: Row(
    children: <Widget>[
     Expanded(
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                child:
                Text('王晓义信球了'),
              ),
              Text('王晓义信球了'),
            ],

         ),
     ),
      new Icon(
        Icons.star,
        color:Colors.red,
      ),
    ],
  ),
);


Widget buttonWidget = new Container(
  //三列
  child:new Row(
    //用MainAxisAlignment.spaceEvenly平均分配子空间
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //孩子们
    children: <Widget>[
      RaisedButton.icon(
         icon: Icon(
             Icons.add_a_photo,
         ),
          label: Text("照相"),
         onPressed: null),
      FlatButton.icon(
        icon: Icon(Icons.add_call),
        label: Text("电话"),
        onPressed: () {},
      ),
      RaisedButton.icon(
          icon: Icon(
            Icons.textsms,
          ),
          label: Text("信息"),
          onPressed: null),
    ],
  ),
);

class StackWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        Image.network(
          "http://172.17.8.100/images/movie/stills/ws/ws1.jpg",
          width: 300,
          height: 300,
        ),
        Image.asset(
          'images/beijingtu.jpg',
          width: 200,
          height: 200,
        ),
        Image.asset(
          'images/hehe.jpg',
          width: 100,
          height: 100,
        ),
      ],
    );

  }
}
