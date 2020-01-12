import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:convert';

import '../home_bean_entity.dart';//解码和编码JSON

void main() => runApp(MyHomeList());
List list = new List();
List list2 = new List();
List list3 = new List();
class MyHomeList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(

      home: MyHometitle()
    );
  }


}

class MyHometitle extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("列表展示"),

      ),

      body:  HomeListView(
            List<String>.generate(10, (i) {
                 return 'Item &i';
        }),
      ),

    );
  }
}

//ListView
class HomeListView extends StatelessWidget {
  final List<String> items;
  HomeListView(this.items);

  @override
  Widget build(BuildContext context) {
    dio_get();
    return new ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return new ListBody(
          children: <Widget>[
            ListWidget(HomeBeanEntity().result, index),
          ],
        );
      },
    );
  }
}
  //dio get请求
  dio_get() async{
    try{
      Response response;
      //等待返回response
      response = await Dio().get("http://172.17.8.100/movieApi/movie/v2/findHotMovieList?page=1&count=6");
      if(response.statusCode == 200){
        print(response);
        //解析
        var ViewData = response.data;
        var decode = json.decode(ViewData);
        var depart = new HomeBeanEntity().fromJson(decode);
        for (var i = 0; i < depart.result.length; i++) {
          list.add(depart.result[i].imageUrl);
          list2.add(depart.result[i].name);
          list3.add(depart.result[i].starring);
         // print(depart.result[i].imageUrl);
        }
      }else{
        print("error");
      }
    }catch(e){
      print(e);
    }
  }


Widget ListWidget(List<HomeBeanResult> resultLists, int index) {
  return Container(
    child: Row(

      children: <Widget>[
         Image.network(
            list[index],
           width: 200,
           height: 200,
        ),
        Expanded(

          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[

                Text(list2[index].toString()),

             Text(list3[index].toString()),
            ],

          ),
        ),

      ],

    ),

  );
}
