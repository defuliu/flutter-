import 'package:flutter/material.dart';
import '../../components/MyDialog.dart';
import 'dart:convert';

class Homepage extends StatefulWidget {
  Homepage({Key key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  


@override
  void initState() {
    // TODO: implement initState
    super.initState();
    Map userInfo = {
    "username":"张三",
    "age":20
    };
    //map 转json字符串
    print(json.encode(userInfo));
    var a =  json.encode(userInfo);
    //a 相当于一个jsonString
    print( a is String);//true

    //json字符串转map类型
    String userData = '{"username":"李四", "age":25}';
    Map u = json.decode(userData);
    print(u["username"]);

 
    

  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: MyButton(
                text: 'FloatBtn设置',
                width: 120.0,
                height: 50.0,
                pressed: () {
                  Navigator.pushNamed(context, '/floatButtton');
                },
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: MyButton(
                text: 'textField',
                width: 120.0,
                height: 50.0,
                pressed: () {
                  Navigator.pushNamed(context, '/textField');
                },
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: MyButton(
                text: 'checkBox组件',
                width: 120.0,
                height: 50.0,
                pressed: () {
                  Navigator.pushNamed(context, '/checkBox');
                },
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: MyButton(
                text: 'Radio组件',
                width: 120.0,
                height: 50.0,
                pressed: () {
                  Navigator.pushNamed(context, '/radio');
                },
              ),
            ),
          ],
        ),
        Divider(),
        SizedBox(height: 10),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: MyButton(
                text: '表单组件练习',
                width: 120.0,
                height: 50.0,
                pressed: () {
                  Navigator.pushNamed(context, '/fromDemo');
                },
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: MyButton(
                text: '日期选择器',
                width: 120.0,
                height: 50.0,
                pressed: () {
                  Navigator.pushNamed(context, '/datePicker');
                },
              ),
            ),
          ],
        ),
        Divider(),
        SizedBox(height: 10),
        Row(
          children: <Widget>[
            Expanded(
              child: MyButton(
                text: '第三方日期选择',
                width: 120.0,
                height: 50.0,
                pressed: () {
                  Navigator.pushNamed(context, '/thridDatePicker');
                },
              ),
            ),
            SizedBox(width:10),
             Expanded(
              child: MyButton(
                text: 'swper组件',
                width: 120.0,
                height: 50.0,
                pressed: () {
                  Navigator.pushNamed(context, '/swiper');
                },
              ),
            ),
             SizedBox(width:10),
             Expanded(
              child: MyButton(
                text: 'dialog组件',
                width: 120.0,
                height: 50.0,
                pressed: () {
                  Navigator.pushNamed(context, '/dialog');
                },
              ),
            ),
            
          ],
        ),
        SizedBox(height:20),
        Row(
          children: <Widget>[
            RaisedButton(
              child: Text('显示自定义Dialog'),
              onPressed: (){
                showDialog(
                  context: context,
                  builder: (context){
                    return MyDialog(title:'光宇我们',content:"内容");
                  }
                
                );
              },
              ),
          ],

        ),
        Divider(),
        SizedBox(height: 10),
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
            SizedBox(width: 10),
            Expanded(
              child: RaisedButton(
                  child: Text('跳转TabController'),
                  onPressed: () {
                    // Navigator.of(context).push(
                    //   MaterialPageRoute(builder:(context)=>SearchPage(title: '我是分类传值',)));
                    Navigator.pushNamed(context, '/tabController');
                  }),
            ),
            SizedBox(width: 10),
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
        SizedBox(height:20),
        Row(
          children: <Widget>[
          Expanded(
              child: MyButton(
                text: 'https数据请求',
                width: 120.0,
                height: 50.0,
                pressed: () {
                  Navigator.pushNamed(context, '/https');
                },
              ),
            ),

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
  const MyButton(
      {this.text, this.pressed = null, this.height = 30.0, this.width = 80.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: this.height,
      width: this.width,
      child: RaisedButton(
          textColor: Colors.white,
          color: Colors.blue,
          child: Text(this.text),
          onPressed: this.pressed),
    );
  }
}
