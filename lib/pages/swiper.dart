import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class SwiperPage extends StatefulWidget {
  SwiperPage({Key key}) : super(key: key);

  @override
  _SwiperPageState createState() => _SwiperPageState();
}

class _SwiperPageState extends State<SwiperPage> {
  List<Map> imgList = [
    {"url": "https://www.itying.com/images/flutter/1.png"},
    {"url": "https://www.itying.com/images/flutter/2.png"},
    {"url": "https://www.itying.com/images/flutter/3.png"}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Swaper组件'),
      ),
      /*body: Swiper(
        itemCount:imgList.length,
        itemBuilder:(BuildContext context,int index){
          return Image.network(imgList[index]['url'],fit:BoxFit.fill);
        },
        pagination: SwiperPagination(),
        control: SwiperControl(),
      
      
      ),
      */
      body: Column(
        children: <Widget>[
          Container(
              // height: 150,
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: Swiper(
                  itemCount: imgList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Image.network(imgList[index]['url'],
                        fit: BoxFit.cover);
                  },
                  pagination: SwiperPagination(),
                  control: SwiperControl(),
                  autoplay: true,
                ),
              )),
          Row(
            children: <Widget>[
              Text('我是一个文本'),
            ],
          )
        ],
      ),
    );
  }
}
