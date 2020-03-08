import 'package:flutter/material.dart';

class TabControllerPage extends StatefulWidget {
  TabControllerPage({Key key}) : super(key: key);

  @override
  _TabControllerPageState createState() => _TabControllerPageState();
}

class _TabControllerPageState extends State<TabControllerPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  //生命周期销毁函数
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();
  }

  @override
  void initState() {
    //生命周期函数,组件一加载就调用
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(length: 6, vsync: this);
    //监听改变
    _tabController.addListener((){
      print(_tabController.index);
      setState(() {
        
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: TabBar(
            //一定要赋值
            controller: this._tabController,
           isScrollable: true,
            tabs: <Widget>[
              Tab(text: '热销'),
              Tab(text: '推荐'),
              Tab(text: '艺术'),
              Tab(text: '体育'),
              Tab(text: '财政'),
              Tab(text: '科技')
            ]),
      ),
      body: TabBarView(controller: this._tabController, //注意
          children: <Widget>[
            Center(child: Text('热销')),
            Center(child: Text('推荐')),
            Center(child: Text('艺术')),
            Center(child: Text('体育')),
            Center(child: Text('财政')),
            Center(child: Text('科技')),
          ]),
    );
  }
}

/**
 *  return DefaultTabController(
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
 * 
 * 
 */
