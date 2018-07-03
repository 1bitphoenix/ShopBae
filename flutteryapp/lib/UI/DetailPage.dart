import 'package:flutter/material.dart';
import 'package:flutteryapp/models/product.dart';

class DetailPage extends StatelessWidget {
  final Product product;
  DetailPage(this.product);
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        appBar: new AppBar(
          backgroundColor: themeColor(product.name),
          title: new Text(product.name),
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back),
            color:Colors.white,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: ItemDetails(
          itemName: this.product.name,
          itemUrl: this.product.imageURL,
          itemRating: this.product.rating,
        ),
        floatingActionButton: new FloatingActionButton(
          onPressed: () {},
          child: new Icon(
            Icons.shopping_cart,
            color: Colors.white,
          ),
          backgroundColor: themeColor(product.name),
        ),
      ),
    );
  }
}



Color themeColor(String color){
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

class ItemDetails extends StatelessWidget {
  final String itemName;
  final String itemUrl;
  final double itemRating;


  ItemDetails({
    @required this.itemName,
    @required this.itemUrl,
    @required this.itemRating
  });


  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[

          Container(

            margin: EdgeInsets.only(top: 20.0),
            child: Image.network(
              "$itemUrl",
              fit: BoxFit.fitHeight,
              height: 250.0,
              width: 150.0,
            ),
          ),

          Divider(),

          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  margin: EdgeInsets.only(left: 15.0),
                  child: Text(
                    itemName,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 19.0
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '$itemRating',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 17.0
                  ),
                ),
              )
            ],
          ),

          Divider(),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Item - 100% Premium Cotton Shirt with subtle shine which gives shirt a premier look\nStyle - No Stitch Front Placket for the classic look\nFit - Slim Fit\nPattern - Solid\nSleeves - Full Sleeves",
              style: TextStyle(
                  fontSize: 15.0,
                  color:  Colors.grey
              ),
            ),
          ),

          Divider(),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Price : Rs. 2100',
              style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.black,
                fontStyle: FontStyle.italic
              ),
            ),
          )

        ],
      ),
    );
  }
}
