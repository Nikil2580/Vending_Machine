import 'package:flutter/material.dart';

class Product2 extends StatefulWidget {
  Product2({Key? key}) : super(key: key);

  @override
  State<Product2> createState() => _Product2State();
}

class _Product2State extends State<Product2> {
  @override
  
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Product 2'),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 200),
            child: Column(children: [
              Container(
                child: Text("Product ID: 1002\nProduct Type: Napkin\nTotal Capacity: 30\nStock Available: 10\n",
                style: TextStyle(
                  fontSize: 30
                ),)
              )
            ]),
          ),
        ),
      ),
    );
  }
}
