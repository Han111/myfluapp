import 'package:flutter/material.dart';

class HomePersonDetailPage extends StatelessWidget {
  // var parentContext;
  // HomePersonDetailPage(this.parentContext);
  // @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("添加"),
      ),
      // body: new Center(
      //   child: new FlatButton(onPressed: (){
      //     Navigator.pop(context);
      //   }, child: new Text("return")),
      // ),
      body: Container(
        child: Column(
          children: <Widget>[
            TextField(
              autofocus: true,
              decoration: InputDecoration(
                  labelText: "用户名",
                  hintText: "用户名或邮箱",
                  prefixIcon: Icon(Icons.person)
              ),
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: "密码",
                  hintText: "您的登录密码",
                  prefixIcon: Icon(Icons.lock)
              ),
              obscureText: true,
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: "密码",
                  hintText: "您的登录密码",
                  prefixIcon: Icon(Icons.lock)
              ),
              obscureText: true,
            ),
          ],
        )
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

// Column(
//   children: <Widget>[
//     TextField(
//       autofocus: true,
//       decoration: InputDecoration(
//           labelText: "用户名",
//           hintText: "用户名或邮箱",
//           prefixIcon: Icon(Icons.person)
//       ),
//     ),
//     TextField(
//       decoration: InputDecoration(
//           labelText: "密码",
//           hintText: "您的登录密码",
//           prefixIcon: Icon(Icons.lock)
//       ),
//       obscureText: true,
//     ),
//   ],
// )

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