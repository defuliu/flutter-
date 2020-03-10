
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
import '../pages/TextField.dart';
import '../pages/CheckBox.dart';
import '../pages/RadioDemo.dart';
import '../pages/Switch.dart';
import '../pages/FromDemo.dart';
import '../pages/DatePicker.dart';
import '../pages/ThirdDatePicker.dart';
import '../pages/swiper.dart';
import '../pages/Dialog.dart';
import '../pages/Https.dart';
import '../pages/NewsRefresh.dart';

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
        '/textField':(context)=>TextFieldPage(),
        '/checkBox':(context)=>CheckBoxPage(),
        '/radio':(context)=>RadioDemoPage(),
         '/switch':(context)=>SwitchPage(),//formDemo
         '/fromDemo':(context)=>FormDemoPage(),
         '/datePicker':(context)=>DatePickerPage(),
         '/thridDatePicker':(context)=> ThridDatePickerPage(),
         '/swiper':(context)=> SwiperPage(),
         '/dialog':(context)=> DialogPage(),
          '/https':(context)=> HttpsPage(),
          '/newsRefresh':(context)=> NewsRefreshPage(),
  
         
        
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
