import 'package:flutter/material.dart';

class HomePersonDetailPage extends StatelessWidget {
  // var parentContext;
  // HomePersonDetailPage(this.parentContext);
  // @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("第二页"),
      ),
      body: new Center(
        child: new FlatButton(onPressed: (){
          Navigator.pop(context);
        }, child: new Text("return")),
      ),
    );
  }
  //   Widget build(BuildContext context) {
  //   return MaterialApp(
  //     title: '添加',
  //     home: HomePersonDetail(),
  //     theme: new ThemeData(
  //       primaryColor: Colors.white,
  //     ),
  //   );
  // }
}

class HomePersonDetail extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomePersonDetailState();
}

class HomePersonDetailState extends State<HomePersonDetail> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("添加"),
      ),
      body: new Center(
        child: new FlatButton(onPressed: (){
          Navigator.pop(context);
        }, child: new Text("return")),
      ),
    );
  }
}