
import 'package:flutter/material.dart';


class CheckBoxPage extends StatefulWidget {
  CheckBoxPage({Key key}) : super(key: key);

  @override
  _CheckBoxPageState createState() => _CheckBoxPageState();
}

class _CheckBoxPageState extends State<CheckBoxPage> {

  var flag = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('选择按钮组件')
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
        Row(children: <Widget>[
          Checkbox(value: this.flag, onChanged:(value){
              setState(() {
                this.flag=value;
              });

          },
          activeColor: Colors.red,
          
          )

        ],),
        Row(children: <Widget>[
          Text(this.flag?'选中':"未选中")
        ],),

        SizedBox(height:20),
        CheckboxListTile(value: this.flag, onChanged:(v){
          setState(() {
            this.flag=v;
          });
        },
        title: Text('标题'),
        subtitle:Text('二级标题') ,
  
        ),
        Divider(), 
        CheckboxListTile(value: this.flag, onChanged:(v){
          setState(() {
            this.flag=v;
          });
        },
        title: Text('标题'),
        subtitle:Text('二级标题') ,
        secondary: Icon(Icons.help),
  
        ),
        


      ],
      ),

    );
  }
}