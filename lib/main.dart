import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Generated App',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: const Color(0xFF2196f3),
        accentColor: const Color(0xFF2196f3),
        canvasColor: const Color(0xFFfafafa),
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var _message;
  static var _rsp = <String>[
    "rock", "sissors", "paper"
  ];

  @override
  void initState() {
    _message = "ok";
    super.initState();
  }

    @override
    Widget build(BuildContext context) {
      return new Scaffold(
        appBar: new AppBar(
          title: new Text('App Name'),
          ),
        body:
          Center(
            child: 
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Padding( 
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      _message,
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Roboto"),
                      ),
                    ),
                  
                  RaisedButton(
                    onPressed: buttonPressed,
                    color: Colors.black12,
                    child: Padding(
                      padding: EdgeInsets.all(10),
                        child: Text(
                          "Push Here!",
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Roboto"
                          ),
                        ),

                    )
                  )

                  /*IconButton(
                    icon: const Icon(Icons.star),
                    iconSize: 50,
                    color: Colors.red,
                    onPressed: buttonPressed,
                  )*/
                ]
              ),
          ),
    
      );
    }
    void buttonPressed(){
      setState(() {
        _message = (_rsp..shuffle()).first;
      });
    }
    
}