import 'package:flutter/material.dart';
import './tabs/category.dart';
import './tabs/setting.dart';
import './tabs/home.dart';

class Tabs extends StatefulWidget {
  final index;
  Tabs({Key key, this.index = 0}) : super(key: key);

  @override
  _TabsState createState() => _TabsState(this.index);
}

class _TabsState extends State<Tabs> {
  int _currentIndex;
  _TabsState(index) {
    this._currentIndex = index;
  }

  List _pageList = [Homepage(), Categorypage(), Settingpage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Demo'),
      ),
      floatingActionButton: Container(
        height: 60.0,
        width: 60.0,
        padding: EdgeInsets.all(6),
        margin: EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.white,
        ),
        child: FloatingActionButton(
          child: Icon(Icons.add),
          backgroundColor: this._currentIndex==1?Colors.red:Colors.yellow,
          onPressed: () {
              setState(() {
                this._currentIndex = 1;
              });
          },
        
        ),
  
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: this._pageList[this._currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: this._currentIndex,
        onTap: (int index) {
          setState(() {
            this._currentIndex = index;
          });
        },
        iconSize: 25.0,
        fixedColor: Colors.red,
        type: BottomNavigationBarType.fixed, //配置底部有多个菜单
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('首页')),
          BottomNavigationBarItem(
              icon: Icon(Icons.category), title: Text('分类')),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), title: Text('设置')),
        ],
      ),
      drawer: Drawer(
          child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: UserAccountsDrawerHeader(
                  accountName: Text("大帝"),
                  accountEmail: Text("9565945@qq.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://www.itying.com/images/flutter/3.png'),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    //背景颜色
                    image: DecorationImage(
                        image: NetworkImage(
                          'https://www.itying.com/images/flutter/2.png',
                        ),
                        fit: BoxFit.cover),
                  ),
                  otherAccountsPictures: <Widget>[
                    Image.network('https://www.itying.com/images/flutter/4.png',
                        fit: BoxFit.cover),
                    Image.network('https://www.itying.com/images/flutter/5.png',
                        fit: BoxFit.cover),
                  ],
                ),
                //   child: DrawerHeader(
                //     decoration: BoxDecoration(
                //       color: Colors.yellow,
                //       //背景颜色
                //       image: DecorationImage(image: NetworkImage('https://www.itying.com/images/flutter/2.png',),fit: BoxFit.cover),
                //     ),
                //     ),
                // )
              )
            ],
          ),
          ListTile(
            leading: CircleAvatar(child: Icon(Icons.home)),
            title: Text('我的空间'),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushNamed(context, '/user');
            },
          ),
          Divider(),
          ListTile(
            leading: CircleAvatar(child: Icon(Icons.people)),
            title: Text('用户中心'),
          ),
          Divider(),
          ListTile(
            leading: CircleAvatar(child: Icon(Icons.settings)),
            title: Text('设置中心'),
          ),
          Divider(),
        ],
      )),
      endDrawer: Drawer(
        child: Text('右测滑动flutter'),
      ),
    );
  }
}
