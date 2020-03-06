import 'package:flutter/material.dart';

class Settingpage extends StatefulWidget {
  Settingpage({Key key}) : super(key: key);

  @override
  _SettingpageState createState() => _SettingpageState();
}

class _SettingpageState extends State<Settingpage> {
  @override
  Widget build(BuildContext context) {
    return ListView(children: <Widget>[
      ListTile(title:Text('我是一个文本')),
      ListTile(title:Text('我是1一个文本')),
      ListTile(title:Text('我是2一个文本')),
      ListTile(title:Text('我是3一个文本')),
      ListTile(title:Text('我是4一个文本')),
      ListTile(title:Text('我是5一个文本')),
      ListTile(title:Text('我是6一个文本')),
    ],);
  }
}