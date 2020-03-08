import 'package:flutter/material.dart';

class AppBarDemoPage extends StatelessWidget {
  const AppBarDemoPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text('appBarDemo'),
            bottom: TabBar(tabs: <Widget>[
              Tab(text: '热门'),
              Tab(text: '推荐'),
            ]),
          ),
          body: TabBarView(
            children: <Widget>[
              ListView(
                children: <Widget>[
                  ListTile(title: Text('第一个tab')),
                  ListTile(title: Text('第一个tab')),
                  ListTile(title: Text('第一个tab')),
                  ListTile(title: Text('第一个tab')),
                  ListTile(title: Text('第一个tab')),
                  ListTile(title: Text('第一个tab')),
                  ListTile(title: Text('第一个tab')),
                ],
              ),
              ListView(
                children: <Widget>[
                  ListTile(title: Text('第二个tab')),
                  ListTile(title: Text('第二')),
                  ListTile(title: Text('第二个tab')),
                  ListTile(title: Text('第二个tab')),
                  ListTile(title: Text('第二个tab')),
                  ListTile(title: Text('第二个tab')),
                  ListTile(title: Text('第第二tab')),
                ],
              ),
            ],
          ),
        ));
  }
}

/*
return Scaffold(
      appBar: AppBar(
        title:Text('AppBarDemoPage',style: TextStyle(
        ),),
        //leading: Icon(Icons.arrow_back),
        centerTitle: true,
        // leading: IconButton(icon:Icon(Icons.menu), onPressed:(){

        //   print('menu');
        // }),
        actions: <Widget>[
          IconButton(icon:Icon(Icons.search), onPressed:(){

          print('search');
        }),
      
        ],
      ),
      body: Text('11111'),
        
      );
*/
