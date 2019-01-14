import 'package:flutter/material.dart';

import './products.dart';
//lifecycle call -> ctor -> createState -> initState -> build

class ProductManager extends StatefulWidget{
  final String startingProduct;

  //wrap in {} to make it a named arg, this way calling the ctor is forced to name the args
  //  and with named args u can only pass values that are allowed(if desired)
  ProductManager({this.startingProduct = 'Sweet tester'});//ctor with named arg and default value


  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ProductManagerState();//calls initState() and build()
  }
}

//                      <> - Class which this state class belongs to
class _ProductManagerState extends State<ProductManager>{
  //List<String> _products = ['Food Tester']; //first element is 'Food Tester'
  List<String> _products = [];

  @override
  void initState() {//init state runs before build()
    // State<> class gives this class(_ProductManagerState)
    // access to the widget it's connected to(ProductManager)
    // thats how you can access startingProduct field in ProductManager class
    _products.add(widget.startingProduct);
    super.initState();//call this line after your code
  }
  //will call whenever the connected widget(ProductManager) receives new external data(this.startingProduct)
  @override
  void didUpdateWidget(ProductManager oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  //context stores general meta data about our app- like theme,color, etc
  @override
  Widget build(BuildContext context) {//setState() will recall this build widget
    //whenever setState() is called, it recalls build, but does not reconstruct the product manager widget
    return Column(children: [Container(
        margin: EdgeInsets.all(10.0),
        child: RaisedButton(
          color: Theme.of(context).primaryColor,//Theme provided by flutter-get primaryColor from our app(context)
          onPressed: () {
            setState(() {
              _products.add("Advanced Food Tester");//recalls this build method when user clicks "add'
            });//           which also recalls Product(_products) to update it
          },
          child: Text('Add Product'),
        )
      //btn w background color
    ),
    Products(_products)
    ]);
  }
}