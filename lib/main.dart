import 'package:flutter/material.dart';
import 'Test0.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //---- 建立頁面跳轉route ----
      initialRoute: "/",
      routes: {
        "/" : (context) => MyHomePage(),
        "/test0" : (context) => Test0(),
      },
    );
  }
}


class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    //---- 建立題庫 ----
    List<String> Questions = <String>["你的氣場如何！你在朋友眼中的形象是？",
                                      "內心真實想法與渴望？",
                                      "測出你的工作與性格！"];

    //---- 首頁：題庫 ----
    final appBar = AppBar(
      leading: Icon(Icons.favorite_outline),
      title: Text('心理測驗'),
      centerTitle: true,
    );

    final widget = ListView.builder(
      padding: EdgeInsets.all(10),
      itemCount: Questions.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: 50,
          child: TextButton(
              onPressed: () { Navigator.pushNamed(context, '/test${index}'); },
              child: Text('${Questions[index]}')
          ),
        );
      },
    );

    final appHomePage = Scaffold(
      appBar: appBar,
      body: widget,
    );

    return appHomePage;
  }

}