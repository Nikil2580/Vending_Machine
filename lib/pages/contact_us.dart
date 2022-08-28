import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          titleTextStyle: const TextStyle(height: 2.0),
          elevation: 0.0,
          backgroundColor: Colors.pink.shade300,
          title: const Text(
            "Contact Us",
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'Roboto',
                fontSize: 18.0,
                fontWeight: FontWeight.w800),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Text("Phone: 9600720019\nEmail: sece.ac.in\nAddress: 376, R.S.Puram, Coimbatore-641010",style: TextStyle(
                fontSize: 15
              ),),
            ),
          ),
        ),
      ),
    );
  }
}
