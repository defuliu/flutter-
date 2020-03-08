
import 'package:flutter/material.dart';
import '../pages/Tabs.dart';
import '../pages/form.dart';
import '../pages/search.dart';
import '../pages/Product.dart';
import '../pages/ProductInfo.dart';
import '../pages/user/Login.dart';
import '../pages/user/RegisterFirst.dart';
import '../pages/user/RegisterSecond.dart';
import '../pages/user/RegisterThrid.dart';
import '../pages/AppBarDemo.dart';
import '../pages/TabController.dart'; 
import '../pages/User.dart';
import '../pages/BottonComponent.dart';
import '../pages/FloatButton.dart';

final routes= {
        '/':(context)=>Tabs(),
        '/form':(context,{arguments})=>FormPage(arguments:arguments),
        '/product':(context)=>ProductPage(),
        '/productInfo':(context,{arguments})=>ProductInfoPage(arguments:arguments),
        '/search':(context,{arguments})=>SearchPage(arguments:arguments),
        '/login':(context)=>LoginPage(),
        '/registerFirst':(context)=>RegisterFirstPage(),
        '/registerSecond':(context)=>RegisterSecondPage(),
        '/registerThrid':(context)=>RegisterThridPage(),
        '/appBarDemo':(context)=>AppBarDemoPage(),
        '/tabController':(context)=>TabControllerPage(),
        '/user':(context)=>UserPage(),
        '/bottonComponent':(context)=>BottonComponentPage(),
        '/floatButtton':(context)=>FloatButtonPage(),
        
};

//固定写法
 var  onGenerateRoute=(RouteSettings settings){
        final String name = settings.name;
        final Function pageContentBuilder = routes[name];
        if(settings.arguments !=null){
          final Route route = MaterialPageRoute(builder:(context)=>pageContentBuilder(context,arguments:settings.arguments)    );
          return route;
        }
        else {
          final Route route = MaterialPageRoute(builder:(context)=>pageContentBuilder(context));
          return route;

        }

};
