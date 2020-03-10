import 'package:flutter/material.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;


class ProductPage extends StatefulWidget {
  ProductPage({Key key}) : super(key: key);

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {

  //请求数据
  _getData() async{
    var apiUrl = "http://a.itying.com/api/productlist";
    var result = await http.get(apiUrl);
    if(result.statusCode == 200) {
        print(result.body);

    }
    else {
      print(result.statusCode);
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('商品页面')
      ),
      body:  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[  

         RaisedButton(
          child: Text('跳转到商品详情'),
          onPressed:(){
               Navigator.pushNamed(context, '/productInfo',arguments: {'id':'123'});

        }),
        SizedBox(height:20),
         RaisedButton(
          child: Text('Get请求数据'),
          onPressed:_getData,)
      ],
    )
    );
  }
}