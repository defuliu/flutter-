import 'package:flutter/material.dart';

class TextFieldPage extends StatefulWidget {
  TextFieldPage({Key key}) : super(key: key);

  @override
  _TextFieldPageState createState() => _TextFieldPageState();
}

class _TextFieldPageState extends State<TextFieldPage> {

//初始化表单赋值
  var userName = new TextEditingController();
  var _password;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    userName.text= '初始值';
    
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('表单组件')
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
       // child:TextDemo() 
       child: Column(children: <Widget>[
         TextField(
           decoration: InputDecoration(
             hintText:'请输入用户名'
           ),
           controller: userName,
           onChanged:(value){
            setState(() {
               userName.text =value;
            });

           },
         ),
         SizedBox(height:10),
         TextField(
           obscureText: true,
           decoration: InputDecoration(
             hintText:'密码'
           ),
           onChanged:(value){
            setState(() {
               _password =value;
            });

           },
         ),
         SizedBox(height:20),
         Container(
           width: double.infinity,
           height: 40,
           child:RaisedButton(
             child: Text('登录'),
             color: Colors.blue,
             textColor: Colors.white,
             onPressed:(){
               print(this.userName.text);
               print(this._password);

           } )
           
         )


       ], ),
      ),

    );
  }
}


class TextDemo extends StatelessWidget {
  const TextDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
          children: <Widget>[
            TextField(),
            SizedBox(height:20),
            TextField(
              decoration: InputDecoration(
                hintText:'请输入搜索内容',
                border: OutlineInputBorder()
              ),
            ),
             SizedBox(height:20),
              TextField(
              maxLines: 4,
              decoration: InputDecoration(
                hintText:'多行文本内容',
                border: OutlineInputBorder()
              ),
            ),
              SizedBox(height:20),
              TextField(
              obscureText: true,
              decoration: InputDecoration(
                icon:Icon(Icons.people),
                hintText:'多行文本内容',
                //rborder: OutlineInputBorder()
              ),
            ),
          ],
        ),
    );
  }
}