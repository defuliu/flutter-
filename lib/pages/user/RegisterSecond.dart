import 'package:flutter/material.dart';

class RegisterSecondPage extends StatefulWidget {
  RegisterSecondPage({Key key}) : super(key: key);

  @override
  _RegisterSecondPageState createState() => _RegisterSecondPageState();
}

class _RegisterSecondPageState extends State<RegisterSecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  appBar:  AppBar(title:Text('第二个注册页面')),
  body: Center(
    child: Column(children: <Widget>[
        SizedBox(height: 40),
        Text('第二个注册页面'),
        RaisedButton(
          child: Text('确定'),
          onPressed:(){
           Navigator.pushNamed(context, '/registerThrid');
          //Navigator.of(context).pushReplacementNamed('/registerThrid');
        })
    ]
    ,)
    ),

    );
  }
}