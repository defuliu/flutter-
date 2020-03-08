import 'package:flutter/material.dart';

class BottonComponentPage extends StatefulWidget {
  BottonComponentPage({Key key}) : super(key: key);

  @override
  _BottonComponentPageState createState() => _BottonComponentPageState();
}

class _BottonComponentPageState extends State<BottonComponentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('button组件及自定组件'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.settings), onPressed: () {})
        ],
      ),
      body: Column(
        //行剧中
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            ////行剧中
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                  child: Text('凸起按钮组件'),
                  color: Colors.purple,
                  textColor: Colors.white,
                  onPressed: () {}),
              SizedBox(width: 10),
              RaisedButton(
                  child: Text('有阴影效果按钮'),
                  color: Colors.blue,
                  textColor: Colors.white,
                  elevation: 10,
                  onPressed: () {}),
              SizedBox(width: 10),
              RaisedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.settings),
                label: Text('有图标的组件'),
                color: Colors.blue,
                textColor: Colors.white,
                elevation: 10,
              )
            ],
          ),
          Row(
            ////行剧中
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 50,
                width: 140,
                child: RaisedButton(
                    child: Text('111凸起按钮组件'),
                    color: Colors.purple,
                    textColor: Colors.white,
                    onPressed: () {}),
              ),
            ],
          ),
          // //自适应阿娜妞
          // Row(
          //   ////行剧中
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: <Widget>[
          //     Expanded(
          //       child: Container(
          //         height: 50,
          //         margin: EdgeInsets.all(10),
          //         width: 100,
          //         child: RaisedButton(
          //             child: Text('自适应凸起按钮组件'),
          //             color: Colors.purple,
          //             textColor: Colors.white,
          //             onPressed: () {}),
          //       ),
          //     )
          //   ],
          // ),
          // SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                  child: Text('自定义按钮组件'),
                  color: Colors.purple,
                  textColor: Colors.white,
                  //设置圆角按钮
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  onPressed: () {}),
            ],
          ),
          //圆形按钮
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 80,
                child: RaisedButton(
                    child: Text('自定义按钮'),
                    color: Colors.purple,
                    textColor: Colors.white,
                    //水波纹
                    splashColor: Colors.red,
                    //设置圆角按钮
                    shape: CircleBorder(
                      side: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {}),
              ),
              Container(
                child: FlatButton(
                    color: Colors.blue,
                    textColor: Colors.white,
                    onPressed: () {},
                    child: Text('flat按钮')),
              ),
              SizedBox(width: 10),
              Container(
                child: OutlineButton(
                    color: Colors.blue,
                    textColor: Colors.red,
                    onPressed: () {},
                    child: Text('OutlineButton按钮')),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ButtonBar(
                children: <Widget>[
                  RaisedButton(
                      child: Text('注册'),
                      color: Colors.purple,
                      textColor: Colors.white,
                      //设置圆角按钮
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      onPressed: () {}),
                  RaisedButton(
                      child: Text('登录'),
                      color: Colors.purple,
                      textColor: Colors.white,
                      //设置圆角按钮
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      onPressed: () {}),

                ],
              ),
            ],
          ),
          SizedBox(height:10),
          Row(children: <Widget>[
           MyButton(text:'自定义按钮',height:30,width:100,pressed:(){
                          print('这是一个自定义按钮');
                      }),
          ],),
        ],
      ),
    );
  }
}


class MyButton extends StatelessWidget {

  final text;
  final  pressed;
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
        child: Text(this.text),
        onPressed:this.pressed
      ),

    );
  }
}