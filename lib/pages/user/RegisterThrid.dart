import 'package:flutter/material.dart';
import '../Tabs.dart';

class RegisterThridPage extends StatefulWidget {
  RegisterThridPage({Key key}) : super(key: key);

  @override
  _RegisterThridPageState createState() => _RegisterThridPageState();
}

class _RegisterThridPageState extends State<RegisterThridPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  appBar:  AppBar(title:Text('第三个注册页面')),
  body: Center(
    child: Column(children: <Widget>[
        SizedBox(height: 40),
        Text('第三个注册页面'),
        RaisedButton(
          child: Text('完成'),
          onPressed:(){
           // Navigator.of(context).pop();

           //返回根,把所有的清楚返回根
           Navigator.of(context).pushAndRemoveUntil(
             new MaterialPageRoute(builder: (contenxt)=>new Tabs(index:1)),(route)=>(route)==null
           );
        })
    ]
    ,)
    ),

    );
  }
}