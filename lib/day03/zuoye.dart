import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.yellow,
      ),
      home: MyHome(
        title: '小明同学',
      ),
    );
  }
}

class MyHome extends StatefulWidget {
  final String title;
  MyHome({Key key, this.title}) : super(key: key);

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHome> {
  final List<Tab> list = <Tab>[
    Tab(text: "首页"),
    Tab(
      text: '首页1',
    ),
    Tab(
      text: '首页2',
    ),
    Tab(
      text: '首页3',
    ),
    Tab(
      text: '首页4',
    ),
    Tab(
      text: '首页5',
    ),
    Tab(
      text: '首页6',
    ),
    Tab(
      text: '首页7',
    ),
    Tab(
      text: '首页8',
    ),
    Tab(
      text: '首页9',
    ),
  ];

  //底部数据
  final Map bottomMap = {
    '首页': Icon(Icons.home),
    "朋友圈": Icon(Icons.camera),
    "圈子": Icon(Icons.message),
    "通讯录": Icon(Icons.account_box),
    "我的": Icon(Icons.devices_other),
  };
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: list.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          bottom: TabBar(
            controller: DefaultTabController.of(context),
            labelColor: Colors.red,
            unselectedLabelColor: Colors.blue,
            indicatorColor: Colors.cyanAccent,
            tabs: list,
            isScrollable: true,
          ),
        ),
        body: TabBarView(
          children: list.map((Tab tab) {
            return new Center(
              child: new StackWidget(),
            );
          }).toList(),
        ),
        //di底部导航栏
        bottomNavigationBar: BottomNavigationBar(
            items: () {
              var items = <BottomNavigationBarItem>[];
              bottomMap.forEach((k, v) {
                items.add(BottomNavigationBarItem(
                  title: Text(k), //取map的值
                  icon: v, //取map的图标
                  backgroundColor: Colors.red, //背景红色
                ));
              });
              return items;
            }(),
            currentIndex: _index, //选中第几个
            onTap: (position) {
              Fluttertoast.showToast(
                msg: '$position',
                //  msg: new Map(Text(k)),
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.BOTTOM,
                timeInSecForIos: 1,
              );
              setState(() {
                _index = position; //状态更新
              });
            }),
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