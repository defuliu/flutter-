
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:dio/dio.dart';

class HttpsPage extends StatefulWidget {
  HttpsPage({Key key}) : super(key: key);

  @override
  _HttpsPageState createState() => _HttpsPageState();
}

class _HttpsPageState extends State<HttpsPage> {

  List _list = [];

  @override
  void initState() { 
    super.initState();
    //this._getData();
     this._getDioData();
     //this._getPostDioData();
    
  }
 //请求数据
  _getData() async{
    var apiUrl = "http://a.itying.com/api/productlist";
    var appUrl = "http://www.phonegap100.com/appapi.php?a=getPortalList&catid=20&page=1";
    var result = await http.get(apiUrl);
    if(result.statusCode == 200) {
        print(result.body);
          setState(() {
            this._list =  json.decode(result.body)['result'];

        });
    }
    else {
      print(result.statusCode);
    }

  }


//dio 
  _getDioData() async
  {
      //var apiUrl = "http://a.itying.com/api/productlist";
      var apiUrl = "http://www.phonegap100.com/appapi.php?a=getPortalList&catid=20&page=1";
       Response response = await Dio().get(apiUrl);  

       setState(() {   
        this._list = json.decode(response.data)["result"];
       });
     
  }

//Dio post 提交数据
  _getPostDioData() async
  {
      Map jsonData ={'userName':'haha',
                    "age":20};
     var apiUrl = "http://a.itying.com/api/productlist";

     Response response  = await Dio().post(apiUrl,data:jsonData);

    print('111111111');
     print(response.data);


  }

//post 提交数据
   _postData() async  {


    var apiUrl = "http://a.itying.com/api/productlist";
    var result = await http.post(apiUrl,body:{} );
    if(result.statusCode == 200) {
      print('wwwwwwww');
        print(result.body);
      

    }
    else {
      print(result.statusCode);
    }


   }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:Text('网络请求'),
      ),
      body: this._list.length>0 ? ListView.builder(
        itemCount: this._list.length,
        itemBuilder:(context,index){
          return ListTile(
            title: Text("${this._list[index]['title']}"),

          );
        }):Text('加载中！'),
      /*
      body:this._list.length > 0 ?ListView(
        children:this._list.map((value){
          return ListTile(
            title:Text(value['title']),
          );

        }).toList(),
      ):Text('加载中！')
      */
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
