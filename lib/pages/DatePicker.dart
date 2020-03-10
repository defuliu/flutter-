import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';


class DatePickerPage extends StatefulWidget {
  DatePickerPage({Key key}) : super(key: key);

  @override
  _DatePickerPageState createState() => _DatePickerPageState();
}

class _DatePickerPageState extends State<DatePickerPage> {
  var _nowDate = DateTime.now();
  var _nowTime = TimeOfDay(hour: 12, minute: 20);

  //showDatePicker 返回类型是个Future方法是个异步类型，相当于javascript的promis
  /*
_showDatePicker(){ 
 showDatePicker(
   context: context,
   initialDate:_nowDate ,
   firstDate: DateTime(1980),
   lastDate: DateTime(2100)
   ).then((res){
     print(res);
   });

}
*/
//第二种方法 await表示等待异步完成再返回结果
  _showDatePicker() async {
    var result = await showDatePicker(
      context: context,
      initialDate: _nowDate,
      firstDate: DateTime(1980),
      lastDate: DateTime(2100),
      
    );
    print(result);
    setState(() {
      this._nowDate = result;
    });
  }

  _showTimePicker() async {
    var timer = await showTimePicker(
      context: context,
      initialTime: _nowTime,
      // locale: Locale('zh'),
    );

    setState(() {
      this._nowTime = timer;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // print(now);
    //print('1111${now.millisecondsSinceEpoch}');
    //print(DateTime.fromMicrosecondsSinceEpoch(1583664651026));
    print(formatDate(DateTime.now(), [yyyy, '年', mm, '月', dd]));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('时间选择器'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              InkWell(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("${formatDate(this._nowDate, [yyyy,'年', mm, '月',dd])}"),
                      Icon(Icons.arrow_drop_down),
                    ],
                  ),
                  onTap: _showDatePicker),
              InkWell(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("${_nowTime.format(context)}"),
                      Icon(Icons.arrow_drop_down),
                    ],
                  ),
                  onTap: _showTimePicker),
            ],
          )
          //相当于没有样式的按钮组件
        ],
      ),
    );
  }
}
