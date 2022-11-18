import 'package:bit_d/Canteen/cart.dart';
import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  final String item;
  final int price;
  Info(this.item, this.price);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('$item'),
      ),
      body: Container(
        width: 500,
        height: 200,
        child: Card(
          margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
          elevation: 5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 25,
              ),
              Text(
                "Food Name : $item",
                style: TextStyle(fontSize: 25),
              ),
              Text(
                "Price : $price",
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                height: 15,
              ),
              FloatingActionButton(
                  child: Icon(Icons.add),
                  onPressed: () {
                    Navigator.push(context,
                        (MaterialPageRoute(builder: (context) => ShopCart())));
                  })
            ],
          ),
        ),
      ),
    ));
  }
}
