import 'package:flutter/material.dart';
import 'homePersonDetail.dart';

class HomePage extends StatelessWidget {
  // createState() => new HomePageState();
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UITableView',
      home: MyHomePage(title: 'RelationshipNet'),
      theme: new ThemeData(
        primaryColor: Colors.white,
      ),
    );
    // return Scaffold(
    //   appBar: AppBar(title:  Text('RelationshipNet')),
    // );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Navigreation',
            onPressed: () => debugPrint('Navigreation button is pressed'),
          ),
          title: Text('导航'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              tooltip: 'Search',
              onPressed: () => debugPrint('Search button is pressed'),
            ),
            IconButton(
              icon: Icon(Icons.more_horiz),
              tooltip: 'More',
              onPressed: () => debugPrint('More button is pressed'),
            )
          ],
        ),
        body: null);
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

// class _MyHomePageState extends State<MyHomePage> {
  // _getListData() {
  //   List<Widget> widgets = [];
  //   for (int i = 0; i < 10; i++) {
  //     widgets.add(Padding(padding: EdgeInsets.all(10.0), child: Text("Row $i")));
  //   }
  //   return widgets;
  // }
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    List<Widget> _list = new List();
    for (int i = 0; i < titleItems.length; i++) {
      _list.add(buildListData(context, titleItems[i], iconItems[i], subTitleItems[i]));
    }
    // 分割线
    var divideTiles = ListTile.divideTiles(context: context, tiles: _list).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
            IconButton(
              icon: Icon(Icons.add),
              tooltip: 'More',
              // onPressed: () => debugPrint('More button is pressed'),
              onPressed: _pushDetail,
            )
          ],
      ),
        body: new Scrollbar(
         // 默认写法
//         child: new ListView(
//           children: _list,
//         ),

        // ListView.builder写法
//        child: new ListView.builder(
//            // 无分割线
////            itemBuilder: (context, item) {
////              return buildListData(context, titleItems[item], iconItems[item], subTitleItems[item]);
////            },
//            // 有分割线
//            itemBuilder: (context, item) {
//              return new Container(
//                child: new Column(
//                  children: <Widget>[
//                    buildListData(context, titleItems[item], iconItems[item], subTitleItems[item]),
//                    new Divider()
//                  ],
//                ),
//              );
//            },
//            itemCount: iconItems.length,
//        ),

        // ListView.separated写法
        child: new ListView.separated(
            itemBuilder: (context, item) {
              return buildListData(context, titleItems[item], iconItems[item], subTitleItems[item]);
            },
            separatorBuilder: (BuildContext context, int index) => new Divider(),
            itemCount: iconItems.length
        ),
      ),
    );
  }

  Widget buildListData(BuildContext context, String titleItem, Icon iconItem, String subTitleItem) {
    return new ListTile(
      leading: iconItem,
      title: new Text(
        titleItem,
        style: TextStyle(fontSize: 18),
      ),
      subtitle: new Text(
        subTitleItem,
      ),
      trailing: new Icon(Icons.keyboard_arrow_right),
      onTap: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return new AlertDialog(
              title: new Text(
                'ListViewAlert',
                style: new TextStyle(
                  color: Colors.black54,
                  fontSize: 18.0,
                ),
              ),
              content: new Text('您选择的item内容为:$titleItem'),
            );
          },
        );
      },

    );
  }

  void _pushDetail() {
    //创建导航栏控件Navigator，然后往里面塞入MaterialPageRoute控件
    // Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context){
    //   return HomePersonDetailPage();
    // }));
    Navigator.of(context,rootNavigator: true).push(
      MaterialPageRoute(
        builder: (BuildContext context) {
          return HomePersonDetailPage();
        }
      )
    );
    // Navigator.of(widget.parentContext).push(new MaterialPageRoute(
    //                         builder: (BuildContext context) => new HomePersonDetailPage()));
  }

  // 数据源
  List<String> titleItems = <String>[
    'keyboard', 'print',
    'router', 'pages',
    'zoom_out_map', 'zoom_out',
    'youtube_searched_for', 'wifi_tethering',
    'wifi_lock', 'widgets',
    'weekend', 'web',
    '图accessible', 'ac_unit',
  ];

  List<Icon> iconItems = <Icon>[
    new Icon(Icons.keyboard), new Icon(Icons.print),
    new Icon(Icons.router), new Icon(Icons.pages),
    new Icon(Icons.zoom_out_map), new Icon(Icons.zoom_out),
    new Icon(Icons.youtube_searched_for), new Icon(Icons.wifi_tethering),
    new Icon(Icons.wifi_lock), new Icon(Icons.widgets),
    new Icon(Icons.weekend), new Icon(Icons.web),
    new Icon(Icons.accessible), new Icon(Icons.ac_unit),
  ];

  List<String> subTitleItems = <String>[
    'subTitle: keyboard', 'subTitle: print',
    'subTitle: router', 'subTitle: pages',
    'subTitle: zoom_out_map', 'subTitle: zoom_out',
    'subTitle: youtube_searched_for', 'subTitle: wifi_tethering',
    'subTitle: wifi_lock', 'subTitle: widgets',
    'subTitle: weekend', 'subTitle: web',
    'subTitle: accessible', 'subTitle: ac_unit',
  ];

}