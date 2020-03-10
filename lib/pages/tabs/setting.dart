import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:dio/dio.dart';

class Settingpage extends StatefulWidget {
  Settingpage({Key key}) : super(key: key);

  @override
  _SettingpageState createState() => _SettingpageState();
}

class _SettingpageState extends State<Settingpage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        SizedBox(height: 10),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
                child: Text('跳转到登录界面'),
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                }),
            SizedBox(width: 10),
            RaisedButton(
                child: Text('跳转到注册界面'),
                onPressed: () {
                  Navigator.pushNamed(context, '/registerFirst');
                }),
          ],

        ),
        SizedBox(height:20),
        Row(
           crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            MyButton(text:'上啦下啦刷新',height:40,width:90,pressed:(){
              Navigator.pushNamed(context, '/newsRefresh');

            }),


        ],),
      ],
    );
  }
}


class MyButton extends StatelessWidget {
  final text;
  final Function pressed;
  final double width;
  final double height;


  //都是可选的
  const MyButton(
      {this.text, this.pressed = null, this.height = 30.0, this.width = 80.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: this.height,
      width: this.width,
      child: RaisedButton(
          textColor: Colors.white,
          color: Colors.blue,
          child: Text(this.text),
          onPressed: this.pressed),
    );
  }
}
