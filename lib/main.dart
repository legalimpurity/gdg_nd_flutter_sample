import 'package:flutter/material.dart';

void main() {
  runApp(ShoppingHomePage());
}

class ShoppingHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.brown,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Simple List App"),
        ),
        body: ListWidget(),
      ),
      debugShowCheckedModeBanner: true,
    );
  }
}

class ListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 20.0
        )
      ),
      child: ListItemStack(),
    );
  }
}

class ListItemStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        imageItem(),
        nameItem(),
        ratingItem(),
      ],
    );
  }
}

// Fuctions
Widget imageItem() => Container(
    color: Colors.pink,
  child: Image.network("https://assets.abfrlcdn.com/img/app/product/1/199775-614183-large.jpg",
  fit: BoxFit.cover,),
  );

Widget nameItem() =>
    Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        constraints: BoxConstraints.expand(height: 40.0),
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Text(
              "BlueShirt",
              style: TextStyle(
                  color: Colors.white
              ),
            ),
          ),
        ),
      ),
    );

Widget ratingItem() =>
    Align(
      alignment: Alignment.topRight,
      child: Container(
//        constraints: BoxConstraints.tightFor(
//          width: 80.0,
//          height: 30.0
//        ),
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start, // Default value
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(
                Icons.star,
                color: Colors.yellow,
              ),
              const SizedBox(width: 8.0,),
              Text(
                  "3.6",
                  style: TextStyle(
                      color: Colors.white
                  ),
                ),
            ],
          ),
        ),
      ),
    );

List<Product> _productList()
{

}