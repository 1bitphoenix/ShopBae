import 'package:flutter/material.dart';
import 'package:flutteryapp/UI/Home/ShoppingListStack.dart';
import 'package:flutteryapp/models/product.dart';

class ShoppingList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 30.0, right: 30.0, top: 10.0, bottom: 10.0),
        child: GridView.count(
          crossAxisCount: 1,
          children: _productList().map((Product product){
            return ShoppingItemStack(product: product,);
          }).toList(growable: false),
        )
    );
  }
}

//hardcoded list
List<Product> _productList(){
  return [
    Product(
        name: "Blue Shirt",
        imageURL: "https://assets.abfrlcdn.com/img/app/product/1/199775-614183-large.jpg",
        rating: 4.2
    ),
    Product(
        name: "Red Shirt",
        imageURL: "https://assets.abfrlcdn.com/img/app/product/8/85181-250173-large.jpg",
        rating: 3.3
    ),
    Product(
        name: "Black Shirt",
        imageURL: "https://assets.myntassets.com/h_240,q_90,w_180/v1/assets/images/2127876/2017/11/23/11511431472633-Roadster-Men-Black-Regular-Fit-Solid-Casual-Shirt-8801511431472500-1_mini.jpg",
        rating: 4.0
    ),
    Product(
        name: "Purple Shirt",
        imageURL: "https://5.imimg.com/data5/YD/FK/MY-25516998/mens-formal-shirts-500x500.jpg",
        rating: 4.4
    ),
    Product(
        name: "Green Shirt",
        imageURL: "https://static1.jassets.com/p/See-Designs-Green-Solid-Casual-Shirt-9267-848157-1-pdp_slider_m.webp",
        rating: 3.2
    ),
    Product(
        name: "Blue Shirt",
        imageURL: "https://assets.abfrlcdn.com/img/app/product/1/199775-614183-large.jpg",
        rating: 4.2
    ),
    Product(
        name: "Red Shirt",
        imageURL: "https://assets.abfrlcdn.com/img/app/product/8/85181-250173-large.jpg",
        rating: 3.3
    ),
    Product(
        name: "Black Shirt",
        imageURL: "https://assets.myntassets.com/h_240,q_90,w_180/v1/assets/images/2127876/2017/11/23/11511431472633-Roadster-Men-Black-Regular-Fit-Solid-Casual-Shirt-8801511431472500-1_mini.jpg",
        rating: 4.0
    ),
    Product(
        name: "Purple Shirt",
        imageURL: "https://5.imimg.com/data5/YD/FK/MY-25516998/mens-formal-shirts-500x500.jpg",
        rating: 4.4
    ),
    Product(
        name: "Green Shirt",
        imageURL: "https://static1.jassets.com/p/See-Designs-Green-Solid-Casual-Shirt-9267-848157-1-pdp_slider_m.webp",
        rating: 3.2
    ),
  ];
}
