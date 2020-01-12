

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      //去除右上角Icon
      debugShowCheckedModeBanner: false,
      //设置颜色
      theme: ThemeData(
        primaryColor: Colors.yellow,
      ),

      //标题
      home:MyHomes() ,
    );
  }

}

class MyHomes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            title: Text('TabView展示'),
            bottom: TabBar(tabs:<Widget>[
             Tab(text: '层叠',icon: Icon(Icons.home),),
            Tab(text: '圈子',icon: Icon(Icons.album),),
             Tab(text: '图片',icon: Icon(Icons.textsms),),
             Tab(text: '列表',icon: Icon(Icons.list),),
             Tab(text: '网格',icon: Icon(Icons.add_to_photos),),
          //   Tab(text: '我的',icon: Icon(Icons.account_box),),

            ],
              labelColor: Colors.red,
              //未选中
              unselectedLabelColor: Colors.blue,
              //已选中
              indicatorColor: Colors.cyanAccent,
            ),
          ),
          body: TabBarView(
              children:<Widget>[
                StackWidget(),
                ContainerWidget(),
                Image.asset(
                  'images/beijingtu.jpg',
                  width: 200,
                  height: 200,
                ),
                ColmnWidget(),
                GridViewWidget(),
              ],
          ),
        ),
    );
  }
}

class StackWidget extends StatelessWidget {
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
}

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

class ColmnWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        ListViewWidget(
          List<String>.generate(20,(i){
            return '&i';
          }),
        ),
      ],
    );

  }
}

//ListView
class ListViewWidget extends StatelessWidget {
  final List<String> items;
  ListViewWidget(this.items);
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return new ListTile(
          title: Text('第$index个条目'),
          /*child: Image.asset('images/beiying.jpg',
            fit:BoxFit.cover,
            height: 200,
          ),*/
        );
      },
    );
  }
}

//GridView
class GridViewWidget extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return new GridView.count(
        crossAxisCount: 2, //3列
        children: List.generate(20,
                (i){
              return Card(
                child: Center(
                  child:Text('This is $i'),
                ),
              );
            })
    );
  }
}

