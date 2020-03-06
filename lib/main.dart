import 'package:flutter/material.dart';
import 'routes/Routes.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',//初始化加载路由
      //命名路由要放在根组件
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      //加括号表示执行方法 不加括号表示复值
      onGenerateRoute: onGenerateRoute,
    
    );
  }
}






