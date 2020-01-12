import 'dart:convert' as convert;
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
void main() => runApp(SettingPage());
class SettingPage extends StatefulWidget {
  SettingPage({Key key}) : super(key: key);

  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {

  List _dataSources = [];

  //网络请求数据
  _requestData() async {
    //服务器地址
    var serverUrl = "http://172.17.8.100/movieApi/movie/v2/findHotMovieList?page=1&count=5";

    //处理网络请求下来的数据
    var response = await Dio().get(serverUrl);
    if (response.statusCode == 200) {
      /**
       * 这里需要注意，response.data的数据类型是不一定的
       * 在实际做项目的时候需要判断一下类型，然后再做进一步处理
       */
      print(response.data);
      print(response.data is String);
      setState(() {
        this._dataSources = convert.jsonDecode(response.data)["result"];
        print("20,${this._dataSources}");
      });
    } else {
      print("Request failed with status: ${response.statusCode}.");
    }
  }

  @override
  void initState() {
    super.initState();
    //页面一加载就执行网络请求
    this._requestData();
  }

  @override
  Widget build(BuildContext context) {
    print("20,${this._dataSources}");
    return Container(
      /**
       * 这里通过一个三目来判断数据是否请求成功
       * 在数据请求成功之前，页面展示“加载中”
       * 数据请求成功之后，就加在ListView列表
       */
      child: this._dataSources.length == 0
          ? Text("加载中......")
          : ListView(
        children: this._dataSources.map((value){
          return ListTile(
            title: Text(value["title"]),
          );
        }).toList(),
      ),
    );
  }
}