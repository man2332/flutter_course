import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

//                            <> - Class which this state class belongs to is MyApp 1:58
class _MyAppState extends State<MyApp> {
  List<String> _products = ['Food Tester']; //first element is 'Food Tester'

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('EasyList'),
          ),
          body: Column(
            children: <Widget>[
              Container(
                  margin: EdgeInsets.all(10.0),
                  child: RaisedButton(
                    onPressed: () {
                      setState(() {
                        _products.add("Advanced Food Tester");
                      });
                    },
                    child: Text('Add Product'),
                  )
                  //btn w background color
                  ),

            ],
          )),
    ); //root widget is material app widget
  } //widgets always return a widget until you reach a widget that ships with flutter
}
