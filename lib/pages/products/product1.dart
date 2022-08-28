import 'package:flutter/material.dart';
// import 'package:step_progress_indicator/step_progress_indicator.dart';

class Product1 extends StatefulWidget {
  Product1({Key? key}) : super(key: key);

  @override
  State<Product1> createState() => _Product1State();
}

class _Product1State extends State<Product1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Product 1'),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 200),
            child: Column(children: [
              Container(
                child: Text("Product ID: 1000\nProduct Type: Napkin\nTotal Capacity: 30\nStock Available: 29\n",
                style: TextStyle(
                  fontSize: 30
                ),)
              ),
//               StepProgressIndicator(
//     totalSteps: 10,
//     currentStep: 6,
//     selectedColor: Colors.red,
//     unselectedColor: Colors.yellow,
// )

            ]),
          ),
        ),
    );
  }
}
