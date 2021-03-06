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
    return DefaultTabController(
        length: 6,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.purple,
            title: Row(
              children: <Widget>[
                Expanded(
                  child: TabBar(
                    indicatorColor: Colors.blue,
                    labelColor: Colors.red,
                    isScrollable: true,
                    unselectedLabelColor: Colors.white,
                    indicatorSize:TabBarIndicatorSize.label,
                    tabs: <Widget>[Tab(text: '热销'), Tab(text: '推荐'), Tab(text: '艺术'), Tab(text: '体育'),Tab(text: '财政'), Tab(text: '科技')],
                  ),
                )
              ],
            ),
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
                ListView(
                children: <Widget>[
                  ListTile(title: Text('第三个tab')),
                  ListTile(title: Text('三')),
                  ListTile(title: Text('第三个tab')),
                  ListTile(title: Text('第三个tab')),
                  ListTile(title: Text('第二三个tab')),
                  ListTile(title: Text('第二个tab')),
                  ListTile(title: Text('第第三tab')),
                ],
              ),
                ListView(
                children: <Widget>[
                  ListTile(title: Text('第四个tab')),
                  ListTile(title: Text('第四')),
                  ListTile(title: Text('第四个tab')),
                  ListTile(title: Text('第四个tab')),
                  ListTile(title: Text('第四个tab')),
                  ListTile(title: Text('第四个tab')),
                  ListTile(title: Text('第第四tab')),
                ],
              ),

                ListView(
                children: <Widget>[
                  ListTile(title: Text('财政频道')),
                  ListTile(title: Text('财政频道')),
                  ListTile(title: Text('财政频道')),
                  ListTile(title: Text('财政频道')),
                  ListTile(title: Text('财政频道')),
                  ListTile(title: Text('财政频道')),
                  ListTile(title: Text('财政频道')),
                ],
              ),
                ListView(
                children: <Widget>[
                  ListTile(title: Text('科技频道')),
                  ListTile(title: Text('科技频道')),
                  ListTile(title: Text('科技频道')),
                  ListTile(title: Text('科技频道')),
                  ListTile(title: Text('科技频道')),
                  ListTile(title: Text('科技频道')),
                  ListTile(title: Text('科技频道')),
                ],
              ),
            ],
          ),
        ));
  }
}
