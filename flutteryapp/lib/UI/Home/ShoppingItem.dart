import 'package:flutter/material.dart';
import 'package:flutteryapp/UI/DetailPage.dart';
import 'package:flutteryapp/models/product.dart';

class ShoppingItemStack extends StatelessWidget {

  final Product product;
  ShoppingItemStack({this.product});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(14.0),
      child: Container(
        child: ListItemStack(product),
      ),
    );
  }
}

class ListItemStack extends StatelessWidget {
  final Product product;

  ListItemStack(this.product);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 8.0,
      child: InkWell(
        onTap: () {
          print(product.name + " tapped");
          Navigator.of(context).push(
              new MaterialPageRoute(builder: (context) => new DetailPage(product)));
        },
        child: new Stack(
          fit: StackFit.expand,
          children: <Widget>[
            new ListItemImage(product),
            new ListItemRating(product),
            new ListItemName(product),
          ],
        ),
      ),
    );
  }
}

class ListItemRating extends StatelessWidget {
  final Product product;

  ListItemRating(this.product);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: new Container(
        decoration: new BoxDecoration(
          color: Colors.black.withOpacity(0.5),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            bottomLeft: Radius.circular(20.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              new Icon(
                Icons.star,
                color: Colors.amber,
                size: 30.0,
              ),
              new SizedBox(
                width: 5.0,
              ),
              new Text(
                product.rating.toString(),
                maxLines: 1,
                style: new TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ListItemImage extends StatelessWidget {
  final Product product;

  ListItemImage(this.product);

  @override
  Widget build(BuildContext context) {
    return new Image.network(
      product.imageURL,
      fit: BoxFit.cover,
    );
  }
}

class ListItemName extends StatelessWidget {
  final Product product;

  ListItemName(this.product);

  @override
  Widget build(BuildContext context) {
    return new Align(
      alignment: Alignment.bottomCenter,
      child: new Container(
        color: itemNameBGColor(product.name).withOpacity(0.5),
        constraints: BoxConstraints.expand(
          height: 60.0,
        ),
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Center(
            child: new Text(
              product.name,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.white,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
        ),
      ),
    );
  }
}


Color itemNameBGColor(String color){
  if(color == 'Blue Shirt'){
    return Colors.blueAccent;
  }
  if(color == 'Red Shirt'){
    return Colors.redAccent;
  }
  if(color == 'Black Shirt'){
    return Colors.black;
  }
  if(color == 'Green Shirt'){
    return Colors.green;
  }

  return Colors.purple;

}