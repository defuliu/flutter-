import 'package:flutter/material.dart';

class RegisterFirstPage extends StatefulWidget {
  RegisterFirstPage({Key key}) : super(key: key);

  @override
  _RegisterFirstPageState createState() => _RegisterFirstPageState();
}

class _RegisterFirstPageState extends State<RegisterFirstPage> {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
  appBar:  AppBar(title:Text('注册')),
  body: Center(
    child: Column(children: <Widget>[
        SizedBox(height: 40),
        Text('注册界面'),
        RaisedButton(
          child: Text('注册'),
          onPressed:(){
         Navigator.pushNamed(context, '/registerSecond');
         //替换路由
        //Navigator.of(context).pushReplacementNamed('/registerSecond');
        })
    ]
    ,)
    ),

    );
  }
}