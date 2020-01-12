

    import 'package:flutter/material.dart';

 void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.cyanAccent,
      ),
      home: MyHome(title : '小明同学'),
    );
  }

}

class MyHome extends StatefulWidget {
  final String title;
  MyHome({Key key,this.title}): super(key : key);

  @override
 MyHomeState createState() => MyHomeState();
}

class MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body:Container(
       child : ContainerWidget(),
      ),

    );
  }
}

/*class StackWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
        children: <Widget>[
          Image.network("http://172.17.8.100/images/movie/stills/ws/ws1.jpg",
          width: 300,
          height: 300,
          ),
          Image.asset(
              'images/beijingtu.jpg',
            width: 200,
            height: 200,
          ),
          Image.asset(
            'images/meinv.jpg',
            width: 100,
            height:100,
          )
        ],

    );
  }
}*/

class ContainerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child:Center(
        child: Text("你好,Flutter!"),
      ),
   //   color: Colors.red,
      width: 200,
      height: 200,
      margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
      padding: EdgeInsets.all(20),
      //边框
      decoration: BoxDecoration(
        color: Colors.yellow,
        borderRadius: BorderRadius.circular(30),
      ),
    );
  }
}

