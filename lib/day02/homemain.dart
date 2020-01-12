import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

import '../home_bean_entity.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  var path = 'http://172.17.8.100/movieApi/movie/v2/findHotMovieList?page=1&count=5';
  // This widge t is the root of your application.
  @override
  Widget build(BuildContext context) {
    getHttp();
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('网络请求/列表展示'),
        ),
        body: const Center(
          child: const Text(''),
        ),
      ),
    );
  }



  Future getHttp() async{
    try{
      Response response = await Dio().get(path);
      print(response.data.toString());
      return response.data.toString();

    }catch(e){
      return print(e);
    }
  }
}


