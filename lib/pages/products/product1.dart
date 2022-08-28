import 'package:flutter/material.dart';

class Product1 extends StatefulWidget {
  Product1({Key? key}) : super(key: key);

  @override
  State<Product1> createState() => _Product1State();
}

class _Product1State extends State<Product1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Product 1'),
        ),
        body: Column(children: []),
      ),
    );
  }
}
