import 'package:flutter/material.dart';
import './tabs/category.dart';
import './tabs/setting.dart';
import './tabs/home.dart';


class Tabs extends StatefulWidget {
  Tabs({Key key}) : super(key: key);

  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {

int _currentIndex = 0;
List _pageList = [Homepage(),Categorypage(),Settingpage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Demo'),
      ),
      body: this._pageList[this._currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: this._currentIndex,
        onTap: (int index){
          setState(() {
            this._currentIndex = index;
          });
        },
        iconSize: 25.0,
        fixedColor: Colors.red,
        type: BottomNavigationBarType.fixed,//配置底部有多个菜单
        items:[
         BottomNavigationBarItem(icon: Icon(Icons.home),title: Text('首页')),
         BottomNavigationBarItem(icon: Icon(Icons.category),title: Text('分类')),
         BottomNavigationBarItem(icon: Icon(Icons.settings),title: Text('设置')),
        ],
        
      )

    
    );
  }
}