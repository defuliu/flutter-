import 'package:flutter/material.dart';
import '../form.dart';

class Categorypage extends StatefulWidget {
  Categorypage({Key key}) : super(key: key);

  @override
  _CategorypageState createState() => _CategorypageState();
}

class _CategorypageState extends State<Categorypage> {
  @override
  Widget build(BuildContext context) {
    return  Column(

      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        
        RaisedButton(
          child: Text('form Navigator传值路由',style: TextStyle(color:Colors.blue),),
          onPressed:(){

          Navigator.of(context).push(
           MaterialPageRoute(builder:(context)=>FormPage(arguments: {"name":"测试1111"})));
        }), 

      ],
    );
  }
}