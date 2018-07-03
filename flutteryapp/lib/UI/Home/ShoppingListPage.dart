import 'package:flutter/material.dart';
import 'package:flutteryapp/UI/Home/ShoppingList.dart';

class ShoppingListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/bg.jpg'),
                fit: BoxFit.fill,
              ),
            ),
            child: ShoppingList(),
        ),
        appBar: new AppBar(
          title: Center(
            child: Text('ShopBae'),
          ),
          backgroundColor: Colors.deepPurpleAccent,
        ),
      ),
    );
  }
}
