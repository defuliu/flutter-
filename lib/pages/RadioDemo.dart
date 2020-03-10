import 'package:flutter/material.dart';

class RadioDemoPage extends StatefulWidget {
  RadioDemoPage({Key key}) : super(key: key);

  @override
  _RadioDemoPageState createState() => _RadioDemoPageState();
}

class _RadioDemoPageState extends State<RadioDemoPage> {
  int sex = 1;
  bool flag = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Radio组件')),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[

              RadioListTile(
                title:Text('标题'),
                subtitle: Text('这是二级标题'),
                secondary: Icon(Icons.help),
                    selected: this.sex==1,
                value: 1, groupValue: this.sex, onChanged:(v){
                    setState(() {
                      this.sex=v;
                    });
                
              }),

               RadioListTile(
                title:Text('标题'),
                subtitle: Text('这是二级标题'),
                selected: this.sex==2,
                secondary: Image.network('https://wwwr.itying.com/images/flutter/1.png'),
                value: 2, groupValue: this.sex, onChanged:(v){

                  setState(() {
                      this.sex=v;
                    });
              }),
              
              SizedBox(height:40),

              Switch(
                value: this.flag,
                onChanged: (v){

                  print(v);
                  setState(() {
                    this.flag=v;
                  });

                },
              )
              
              /*
              Row(
                children: <Widget>[
                  Text('男'),
                  Radio(
                      value: 1,
                      groupValue: this.sex,
                      onChanged: (v) {
                        setState(() {
                          this.sex = v;
                        });
                      }),
                  Text('女'),
                  Radio(
                      value: 2,
                      groupValue: this.sex,
                      onChanged: (v) {
                        setState(() {
                          this.sex = v;
                        });
                      }),
                ],
              ),
              */
            

            ],
          ),
        ));
  }
}
