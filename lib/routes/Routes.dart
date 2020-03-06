
import 'package:flutter/material.dart';
import '../pages/Tabs.dart';
import '../pages/form.dart';
import '../pages/search.dart';

final routes= {
        '/':(context)=>Tabs(),
        '/form':(context,{arguments})=>FormPage(arguments:arguments),
        '/search':(context,{arguments})=>SearchPage(arguments:arguments),
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
