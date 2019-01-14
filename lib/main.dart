import 'package:flutter/material.dart';

import './product_manager.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(//Theme: sets the design of the app-ThemeData()- by flutter- sets the theme of app by passing it values
        brightness: Brightness.light,
        primarySwatch: Colors.deepOrange,//primarySwatch-rest picked for u, Colors-provide static properties provided by flutter
        accentColor: Colors.deepPurple//many other options in ThemeData you can play with
      ),
        home: Scaffold(
          appBar: AppBar(
            title: Text('EasyList'),
          ),
          body: ProductManager(startingProduct: 'Food Testerr'),
        )
    ); //root widget is material app widget
  } //widgets always return a widget until you reach a widget that ships with flutter
}
