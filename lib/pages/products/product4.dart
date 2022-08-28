import 'package:flutter/material.dart';

class Product4 extends StatefulWidget {
  Product4({Key? key}) : super(key: key);

  @override
  State<Product4> createState() => _Product4State();
}

class _Product4State extends State<Product4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product 4'),
      ),
      body: Column(children: []),
    );
  }
}
