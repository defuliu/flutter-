import 'package:flutter/material.dart';

class FormDemoPage extends StatefulWidget {
  FormDemoPage({Key key}) : super(key: key);

  @override
  _FormDemoPageState createState() => _FormDemoPageState();
}

class _FormDemoPageState extends State<FormDemoPage> {
  String username;
  String info;
  List hobby = [
    {"checked": true, "title": "吃饭"},
    {"checked": true, "title": "睡觉"},
    {"checked": false, "title": "打游戏"}
  ];
  int sex = 1;
  void _sexChanged(v) {
    setState(() {
      this.sex = v;
    });
  }

  List<Widget> _getHobby() {
    List<Widget> tempList = [];
    for (var i = 0; i < this.hobby.length; i++) {
      tempList.add(Row(
        children: <Widget>[
          Text(this.hobby[i]['title'] + ":"),
          Checkbox(
          value: this.hobby[i]["checked"],
          onChanged: (v) {
            setState(() {
              this.hobby[i]["checked"] = v;
            });
          })

        ],
      ));
    }
    return tempList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Form组件')),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                  hintText: "输入用户信息",
                ),
                onChanged: (v) {
                  setState(() {
                    this.username = v;
                  });
                },
              ),
              Row(
                children: <Widget>[
                  Text("男"),
                  Radio(
                      value: 1,
                      groupValue: this.sex,
                      onChanged: this._sexChanged),
                  SizedBox(width: 20),
                  Text("女"),
                  Radio(
                      value: 2,
                      groupValue: this.sex,
                      onChanged: this._sexChanged),
                ],
              ),
              //爱好
              SizedBox(
                height: 10,
              ),
              Wrap(
                children: this._getHobby(),
              ),
               SizedBox(  height: 10, ),
               TextField(
                 maxLines: 4,
                 decoration: InputDecoration(
                   hintText:'描述信息',
                   border: OutlineInputBorder()
                 ),
                 onChanged: (v){
                   setState(() {
                     this.info=v;
                   });
                 },
               ),



              SizedBox(height: 20),
              Container(
                width: double.infinity,
                height: 40,
                child: RaisedButton(
                  child: Text('登录'),
                  onPressed: () {
                    print(this.sex);
                    print(this.username);
                    print(this.hobby);
                  },
                  color: Colors.blue,
                  textColor: Colors.white,
                ),
              )
            ],
          ),
        ));
  }
}
