import 'package:flutter/material.dart';

class Product3 extends StatefulWidget {
  Product3({Key? key}) : super(key: key);

  @override
  State<Product3> createState() => _Product3State();
}

class _Product3State extends State<Product3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Product 3'),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 200),
            child: Column(children: [
              Container(
                child: Text("Product ID: 1003\nProduct Type: Napkin\nTotal Capacity: 30\nStock Available: 20\n",
                style: TextStyle(
                  fontSize: 30
                ),)
              )
            ]),
          ),
        ),
    );
  }
}
