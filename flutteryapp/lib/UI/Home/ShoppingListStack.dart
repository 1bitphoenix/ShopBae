import 'package:flutter/material.dart';
import 'package:flutteryapp/models/product.dart';

class ShoppingItemStack extends StatelessWidget {

  final Product product;
  ShoppingItemStack({this.product});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: new Stack(
        fit: StackFit.expand,
        children: <Widget>[
          imageItem(product.imageURL),
          nameItem(product.name),
          ratingItem(product.rating),
          addToWishList(),
        ],
      ),
    );
  }
}

Widget addToWishList() {
  return Align(
    alignment: Alignment.topLeft,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Icon(
        Icons.star,
        color: Colors.amber,
        size: 30.0,
      ),
    ),
  );
}

Widget imageItem(String url) {
  return new Container(
    constraints: BoxConstraints.tightFor(
      height: 150.0,
      width: 10.0,
    ),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(10.0),
        topLeft: Radius.circular(10.0),
      )
    ),
    child: Image.network(
      '$url',
      fit: BoxFit.fill,

    ),
  );
}

Widget nameItem(String name){
  return Align(
    alignment: Alignment.bottomCenter,
    child: new Container(
      constraints: BoxConstraints.expand(
        height: 55.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(10.0),
          bottomLeft: Radius.circular(10.0),
        ),
        color: Colors.black38,
      ) ,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: Text(
            '$name',
            style: TextStyle(
              color: Colors.white,
              fontStyle: FontStyle.italic,
              fontSize: 21.0,
            ),
          ),
        ),
      ),
    ),
  );
}

Widget ratingItem(double rating){
  return Align(
    alignment: Alignment.topRight,
    child: Container(

      decoration: BoxDecoration(
        color: Colors.white24,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10.0),
          bottomLeft: Radius.circular(10.0),
        ),
      ),

      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            new Icon(
              Icons.thumb_up,
              color: Colors.blueAccent,
            ),
            const SizedBox(
              width: 8.0,
            ),
            new Text(
              '$rating',
              style: new TextStyle(
                color: Colors.black,
                fontSize: 20.0,
              ),
            )
          ],
        ),
      ),
    ),
  );
}
