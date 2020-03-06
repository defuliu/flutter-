import 'package:flutter/material.dart';


class FormPage extends StatelessWidget {
  final arguments;
  FormPage({this.arguments});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Text('浮动按钮'),
        onPressed:(){
          Navigator.of(context).pop();
        }
      ),
       appBar: AppBar(
        title:Text(this.arguments['name'])
      ),
      body: ListView(children: <Widget>[
        ListTile(title:Text('我是表单页面${this.arguments['name']}')),
        ListTile(title:Text('我是表单页面')),
        ListTile(title:Text('我是表单页面')),
        ListTile(title:Text('我是表单页面')),
      ],),
    );
  }
}