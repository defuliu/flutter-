import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  final arguments;
  SearchPage({this.arguments});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed:(){
          Navigator.of(context).pop();
        }
      ),
       appBar: AppBar(
        title:Text(this.arguments['id'])
      ),
      body: ListView(children: <Widget>[
        ListTile(title:Text('我是表单页面${arguments !=null ? arguments['id']:0}')),
        ListTile(title:Text('我是表单页面')),
        ListTile(title:Text('我是表单页面')),
        ListTile(title:Text('我是表单页面')),
      ],),
    );
  }
}