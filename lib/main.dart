import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // 图片描述
    Widget titleSection = new Container(
      padding: const EdgeInsets.all(32.0),
      child: new Row(children: [
        new Expanded(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              new Container(
                padding: const EdgeInsets.only(bottom: 8),
                child: new Text('美丽的湖',
                    style: new TextStyle(
                      fontWeight: FontWeight.bold,
                    )),
              ),
              new Text('位于北京市密云区',
                  style: new TextStyle(
                    color: Colors.grey[500],
                  )),
            ],
          ),
        ),
        new Icon(
          Icons.star,
          color: Colors.red[500],
        ),
        new Text('41'),
      ]),
    );

    // 按钮列
    Column buildButtonColumn(IconData icon, String label) {
      Color color = Theme.of(context).primaryColor;

      return new Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          new Icon(icon, color: color),
          new Container(
            margin: const EdgeInsets.only(top: 8.0),
            child: new Text(
              label,
              style: new TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w400,
                color: color,
              ),
            ),
          ),
        ],
      );
    }

    Widget buttomSelection = new Container(
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildButtonColumn(Icons.call, '电话'),
          buildButtonColumn(Icons.near_me, '附近'),
          buildButtonColumn(Icons.share, '分享'),
        ],
      ),
    );

    Container buildTextContainer(String text) {
      return new Container(
        padding: const EdgeInsets.fromLTRB(32.0, 32.0, 32.0, 0),
        child: new Text(
          text,
          softWrap: true,
        ),
      );
    }

    // 文本部分
    Widget textSection1 = buildTextContainer(
        '雁栖湖：位于北京郊区怀柔城北8公里处的燕山脚下，是以湖面为中心的水陆区域，风光旖旎，湖水清澈。每年春秋两季常有成群的大雁来湖中栖息，故而得名。');
    Widget textSection2 = buildTextContainer(
        '自1986年以来，怀柔区政府不断加大对雁栖湖资金投入，陆续建成了一些景区，现在已经成为北京市民假期休闲，旅游的好去处，2000年被国家旅游局评为国家AAAA级风景区。2014年11月5日APEC峰会在北京雁栖湖拉开帷幕，2017年5月上旬举办”一带一路“国际峰会。峰会让雁栖湖的名字声誉鹊起。');
    Widget textSection3 = buildTextContainer(
        '景区主要分为几大部分：一是核心区即雁栖岛（雁栖半岛）会议中心及配套设施（夏园、雁栖岛酒店和别墅群），二是岸边的北京雁栖湖国际会展中心及配套的北京日出东方凯宾斯基酒店（属雁栖湖国际会都区之一），三是湖面的自然景观带，四是各种游玩区，五是湖区风情街和附近的小镇。');

    return new MaterialApp(
      title: 'Flutter Ui',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Flutter UI'),
        ),
        body: new ListView(
          children: [
            new Image.asset(
              'images/lake.jpg',
              width: 600.0,
              height: 240.0,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttomSelection,
            textSection1,
            textSection2,
            textSection3
          ],
        ),
      ),
    );
  }
}
