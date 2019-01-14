import 'package:flutter/material.dart';

class Products extends StatelessWidget {

  final List<String> products;//be init once at ctor and never again
  //if a value is pass to ctor after, it will replace the field with a new variable-not reassign value
  //and recall build again

  Products(this.products);//ctor- this.products assigns value passed in to a field with same name

  @override
  Widget build(BuildContext context) {
    return Column(
      children: products
          .map(
            //map calls it's function when it gets iterated over(as in adding a new element will iterate over)
            //element refers to each element in the list-a string 'Food Tester' is element
            (element) => Card(
                  child: Column(
                    children: <Widget>[
                      Image.asset('assets/food.jpg'),
                      Text(element)
                    ],
                  ),
                ),
          )
          .toList(), //map returns a view-which needs to be a List<Card> cause  children: List<Widget>
    );
  }
}
