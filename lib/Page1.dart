import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     home: MyPage(),
    );
  }
}
class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  _MyPageState createState() => _MyPageState();
}
class _MyPageState extends State<MyPage> {
  int _re=0;
  final GlobalKey<ScaffoldState> _globalKey=GlobalKey<ScaffoldState>();

  _showSnackbar(){
    var _mySnackbar=SnackBar(content: Text('SnackBar'),);
    _globalKey.currentState! _showSnackbar(_mySnackbar);
  }
  @override

  Widget build(BuildContext context) {
    return  Scaffold(
      key: _globalKey,
      appBar: AppBar(
        title: Text('Flutter Demo Home Page'),
        actions: <Widget>[
          IconButton(onPressed: (){
            setState(() {
              _re=0;
            });
          }, icon: Icon(Icons.refresh))
        ],
      ),
      body: Center(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('You have pushed the button this many times:'),

               Text('$_re',style: TextStyle(fontSize: 50),),
            ],
          ),
        ),

      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        setState(() {
          _re++;
        });
      },
      child: Icon(Icons.add),
      ),

    );
  }
}

