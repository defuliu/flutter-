
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class DialogPage extends StatefulWidget {
  DialogPage({Key key}) : super(key: key);

  @override
  _DialogPageState createState() => _DialogPageState();
}

class _DialogPageState extends State<DialogPage> {

 _alertDialog() async{
var result = await showDialog(
  context: context,
  builder:(context){
    // return Container(
    //   height: 100,
    //   color: Colors.red,
    //   child:Text('1111')
    // );
    return AlertDialog(
      title: Text('提示信息'),
      content:Text('您确定要删除'),
      actions: <Widget>[
        FlatButton(onPressed:(){
            print('取消');
            Navigator.pop(context,'Cancel');
        }, child: Text('取消')),
         FlatButton(onPressed:(){
            print('确定');
              Navigator.pop(context,'ok');
        }, child: Text('确定')),
      ],
    );
  } 
  
  );

  print(result);

}
_selectDialog() async{

  showDialog(context: context,
    builder:(context){
      return SimpleDialog(
        title: Text('选择内容'),
        children: <Widget>[
          SimpleDialogOption(
            child:Text('option A'),
            onPressed: (){
              print("Option A");
              Navigator.pop(context);
            },
          ),
          Divider(),
           SimpleDialogOption(
            child:Text('option B'),
            onPressed: (){
              print("Option B");
              Navigator.pop(context);
            },
          ),
            Divider(),
           SimpleDialogOption(
            child:Text('option C'),
            onPressed: (){
              print("Option C");
              Navigator.pop(context);
            },
          ),
        ],
      );
    }
  );

}
_modeBottomSheet() async{
 var result = await showModalBottomSheet(
     context: context,
      builder:(context){
        return Container(
          height: 300,
          child: Column(children: <Widget>[
             Divider(),
            ListTile(title:Text('分享A'),
            onTap:(){
               Navigator.pop(context,'分享A');
            },
            ),
             Divider(),
             ListTile(title:Text('分享B'),
            onTap:(){
                Navigator.pop(context,'分享B');
            },
            ),
            Divider(),
             ListTile(title:Text('分享C'),
            onTap:(){
                   Navigator.pop(context,'分享C');
            },
            ),
             Divider(),
          ],),
        );
      }
      
  );

  print(result);

}
_toast() async{
  Fluttertoast.showToast(
        msg: "提示信息",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIos: 3,
        backgroundColor: Colors.black,
        textColor: Colors.white,
        fontSize: 16.0
    );

}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('Dialog组件'),
      ),

      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text('alert弹出框-alertDialog'),
              onPressed: _alertDialog,
            ),
            SizedBox(height:20),
             RaisedButton(
              child: Text('select弹出框-alertDialog'),
              onPressed: _selectDialog,
            ),
             SizedBox(height:20),
             RaisedButton(
              child: Text('ActionSheet底部-alertDialog'),
              onPressed: _modeBottomSheet,
            ),

             SizedBox(height:20),
             RaisedButton(
              child: Text('toast-flutter第三方库'),
              onPressed: _toast,
            ),

          ],
        
        
        )
      ),
    );
  }
}