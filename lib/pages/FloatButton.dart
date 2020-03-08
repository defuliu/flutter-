

import 'package:flutter/material.dart';


class FloatButtonPage extends StatefulWidget {
  FloatButtonPage({Key key}) : super(key: key);

  @override
  _FloatButtonPageState createState() => _FloatButtonPageState();
}

class _FloatButtonPageState extends State<FloatButtonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:FloatingActionButton(
        child: Icon(Icons.add,color: Colors.blue,size:40,),
       backgroundColor: Colors.yellow,
        onPressed: (){
          print('1111');
      }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
 
      appBar:AppBar(
          title: Text('floatButton 按钮'),
      )
    );
  }
}