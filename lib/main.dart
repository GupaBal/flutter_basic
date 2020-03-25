import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'cupertino_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
     // home: CupertinoPage());
    home: HelloPage('은평제일교회 청년부 입니다!!'));
  }
}

//상태를 갖을 수 있는 위젯이라고 보면 된다.
class HelloPage extends StatefulWidget {
  final String title;

  HelloPage(this.title);

  @override
  _HelloPageState createState() => _HelloPageState();
}

class _HelloPageState extends State<HelloPage> {
  String _message = 'Hello World';
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: _changeMessage),
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body : Center(
          child : Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(_message, style: TextStyle(fontSize:20)),
              Text('$_counter', style: TextStyle(fontSize:20)),
              RaisedButton(
                child: Text('화면 이동'),
                onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=> CupertinoPage())
                  );
                },
              )
            ],
          )
        )
    );
  }

  void _changeMessage() {
    setState(() {
      _message = '샬롬 할렐루야~';
      _counter ++;
    });
  }
}

