import 'package:flutter/material.dart';
import 'package:flutter_cupertino_date_picker/flutter_cupertino_date_picker.dart';
import 'package:date_format/date_format.dart'; 
 

class ThridDatePickerPage extends StatefulWidget {
  ThridDatePickerPage({Key key}) : super(key: key);

  @override
  _ThridDatePickerPageState createState() => _ThridDatePickerPageState();
}

class _ThridDatePickerPageState extends State<ThridDatePickerPage> {

var _dateTime = DateTime.now();
_showDatePicker(){
  DatePicker.showDatePicker(
    context,
    pickerTheme: DateTimePickerTheme(
      showTitle: true,
      confirm: Text('确定',style:TextStyle(color:Colors.red)),
      cancel: Text('取消',style:TextStyle(color:Colors.cyan)),
    ),
    minDateTime: DateTime.parse('1980-05-12'),
    maxDateTime: DateTime.parse('2100-05-12'),
    initialDateTime: _dateTime,
   // dateFormat: 'yyyy-MMMM-ddd',
    dateFormat: 'yy年M月d日 EEE,H时:m分',
    pickerMode: DateTimePickerMode .datetime,
    locale: DateTimePickerLocale.zh_cn,
    onCancel: (){
      debugPrint('onCancel');
    },
    onConfirm: (dateTime,List<int>index){
      setState(() {
        _dateTime = dateTime;
      });
    }

  );

}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('第三方日期选择'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                InkWell(
                  child:Row(children: <Widget>[
                    Text('${formatDate(this._dateTime, [yyyy,'年', mm, '月',dd,' ',HH,':',nn])}'),
                      //Text('${formatDate(this._dateTime, [yyyy,'年', mm, '月',dd])}'),
                    Icon(Icons.arrow_drop_down)
                  ],),
                  onTap:_showDatePicker
                ),

              ],
            )
          ],
        ));
  }
}
