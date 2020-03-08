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
        Row(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: <Widget>[
             MyButton(text:'FloatBtn设置',width:120.0,height:50.0,pressed: (){
               Navigator.pushNamed(context, '/floatButtton');
             },)
        
           ],
        )
        ,
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: RaisedButton(
                  child: Text('Botton组件'),
                  onPressed: () {
                    // Navigator.of(context).push(
                    //   MaterialPageRoute(builder:(context)=>SearchPage(title: '我是分类传值',)));
                    Navigator.pushNamed(context, '/bottonComponent');
                  }),
            ),
            SizedBox(width:10),
            Expanded(
              child: RaisedButton(
                  child: Text('跳转TabController'),
                  onPressed: () {
                    // Navigator.of(context).push(
                    //   MaterialPageRoute(builder:(context)=>SearchPage(title: '我是分类传值',)));
                    Navigator.pushNamed(context, '/tabController');
                  }),
            ),
             SizedBox(width:10),
            Expanded(
              child: RaisedButton(
                  child: Text('跳转AppNavBar'),
                  onPressed: () {
                    // Navigator.of(context).push(
                    //   MaterialPageRoute(builder:(context)=>SearchPage(title: '我是分类传值',)));
                    Navigator.pushNamed(context, '/appBarDemo');
                  }),
            ),
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: <Widget>[
            RaisedButton(
                child: Text('跳转Botton组件'),
                onPressed: () {
                  // Navigator.of(context).push(
                  //   MaterialPageRoute(builder:(context)=>SearchPage(title: '我是分类传值',)));
                  Navigator.pushNamed(context, '/bottonComponent');
                }),
           SizedBox(width: 10),
            RaisedButton(
                child: Text('跳转TabController'),
                onPressed: () {
                  // Navigator.of(context).push(
                  //   MaterialPageRoute(builder:(context)=>SearchPage(title: '我是分类传值',)));
                  Navigator.pushNamed(context, '/tabController');
                }),
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: <Widget>[
            RaisedButton(
                child: Text('跳转AppNavBar'),
                onPressed: () {
                  // Navigator.of(context).push(
                  //   MaterialPageRoute(builder:(context)=>SearchPage(title: '我是分类传值',)));
                  Navigator.pushNamed(context, '/appBarDemo');
                }),
             SizedBox(width: 10),
            RaisedButton(
                child: Text('form默认路由'),
                onPressed: () {
                  // Navigator.of(context).push(
                  //   MaterialPageRoute(builder:(context)=>SearchPage(title: '我是分类传值',)));
                  Navigator.pushNamed(context, '/form',
                      arguments: {"name": "测试"});
                }),
          ],
        ),
        Row(
          children: <Widget>[
            RaisedButton(
                child: Text('命名路由search传值'),
                onPressed: () {
                  // Navigator.of(context).push(
                  //   MaterialPageRoute(builder:(context)=>FormPage(title: '这是一个测试',))
                  // );

                  Navigator.pushNamed(context, '/search',
                      arguments: {"id": '123'});
                }),
            SizedBox(width: 10),       
            RaisedButton(
                child: Text('跳转到商品页面'),
                onPressed: () {
                  Navigator.pushNamed(context, '/product');
                })
          ],
        ),
      ],
    );
  }
}


class MyButton extends StatelessWidget {

  final text;
  final Function pressed;
  final double width;
  final double height;

  //都是可选的
  const MyButton({this.text,this.pressed=null,this.height=30.0,this.width=80.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      height:this.height,
      width: this.width,
      child: RaisedButton(
        textColor: Colors.white,
        color: Colors.blue,
        child: Text(this.text),
        onPressed:this.pressed
      ),

    );
  }
}