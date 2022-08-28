import 'package:flutter/material.dart';

class Product2 extends StatefulWidget {
  Product2({Key? key}) : super(key: key);

  @override
  State<Product2> createState() => _Product2State();
}

class _Product2State extends State<Product2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product 2'),
      ),
      body: Column(children: []),
    );
  }
}
