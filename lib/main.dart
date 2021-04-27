import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: ThemeData(

        primarySwatch: Colors.green,
      ),
      home: MyHomePage(title: 'Activity 11 (Checkpoint 2)'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState  createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  void _showMessage(String message){
    try {
      _scaffoldKey.currentState.showSnackBar(
          SnackBar(
            content: Text(message),
            action: SnackBarAction(
              label: 'Back',
              onPressed: () {
                print('Action in Snackbar has been pressed.');
              },
            ),
          )
      );
    } on Exception catch (e, str) {
      print(str);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          height: 60.0,
          width: 160.0,
          child: OutlineButton(
            color: Colors.lightGreen,
            textColor: Colors.green,
            borderSide: BorderSide(color: Colors.green, width: 2.0, style: BorderStyle.solid),
            child: Text('Press this button'),
            onPressed: () { _showMessage("Miss.Siriluck Raksawat 5935512019");},
          )
        )
      )
    );
  }
}
