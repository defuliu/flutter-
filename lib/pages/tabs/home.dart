import 'package:flutter/material.dart';


class Homepage extends StatefulWidget {
  Homepage({Key key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[  
        RaisedButton(
          child: Text('form默认路由'),
          onPressed:(){
            // Navigator.of(context).push(
            //   MaterialPageRoute(builder:(context)=>SearchPage(title: '我是分类传值',)));
            Navigator.pushNamed(context, '/form',arguments: {"name":"测试"});

        }),
         RaisedButton(
          child: Text('命名路由search传值'),
          onPressed:(){
            // Navigator.of(context).push(
            //   MaterialPageRoute(builder:(context)=>FormPage(title: '这是一个测试',))
            // );

               Navigator.pushNamed(context, '/search',arguments:{"id":'123'});

        })
      ],
    );
  }
}