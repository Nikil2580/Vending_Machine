import 'package:flutter/material.dart';
import 'package:vending/pages/products/product1.dart';
import 'package:vending/pages/products/product2.dart';
import 'package:vending/pages/products/product3.dart';
import 'package:vending/pages/products/product4.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

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
            "Home",
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'Roboto',
                fontSize: 18.0,
                fontWeight: FontWeight.w800),
          ),
          centerTitle: true,
        ),
        body: Column(
            children: [
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Scrollbar(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  ),
                ),
              ),
              const SizedBox(height: 5),
              Expanded(
                child: ListView.builder(
                  itemCount: product.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 3),
                      child: Card(
                        elevation: 10,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14)),
                        // ignore: unnecessary_new
                        child: new InkWell(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => pages[index],
                              ),
                            );
                          },
                          child: SizedBox(
                              height: 150,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    // SizedBox(
                                    //   height: 30,
                                    //   child: Stack(children: [
                                    //     Container(
                                    //       // foregroundDecoration: BoxDecoration(
                                    //       //     image: DecorationImage(
                                    //       //   image: AssetImage(
                                    //       //       'assets/images/${entries[index]}'),
                                    //       //   fit: BoxFit.fitWidth,
                                    //       // )),
                                    //       child: Center(
                                    //         child: Text("${entries[index]}"),
                                    //       ),
                                    //     ),
                                    //     Padding(
                                    //       padding: const EdgeInsets.all(8.0),
                                    //       /*child: Align(
                                    //         alignment: Alignment.topRight,
                                    //         child: Container(
                                    //           height: 35,
                                    //           width: 35,
                                    //           decoration: const BoxDecoration(
                                    //               color: Color.fromARGB(
                                    //                   95, 0, 0, 0),
                                    //               shape: BoxShape.circle),
                                    //           child: Padding(
                                    //             padding: const EdgeInsets.only(
                                    //                 right: 10.0),
                                    //             child: IconButton(
                                    //               icon: Icon(
                                    //                 angerselections[index]
                                    //                     ? Icons
                                    //                         .favorite_border_sharp
                                    //                     : Icons.favorite_sharp,
                                    //                 color:
                                    //                     angerselections[index]
                                    //                         ? Colors.white
                                    //                         : Colors.red,
                                    //                 size: 20,
                                    //               ),
                                    //               onPressed: () {
                                    //                 setState(() {
                                    //                   angerselections[index] =
                                    //                       !angerselections[
                                    //                           index];
                                    //                 });
                                    //               },
                                    //             ),
                                    //           ),
                                    //         ),
                                    //       ),*/
                                    //     ),
                                    //   ]),
                                    // ),
                                    Center(
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            14.0, 50, 0, 10),
                                        child: Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                              product[index],
                                              style: TextStyle(
                                                fontSize: 22,
                                              ),
                                            )),
                                      ),
                                    ),
                                  ])),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
      ),
    );
  }
}


// final List<String> entries = <String>[
//   'Product Id 10',
//   'Product Id 20',
//   'Product Id 30',
//   'Product Id 40',
// ];

final List<String> product = <String>[
  'Product Id 1',
  'Product Id 2',
  'Product Id 3',
  'Product Id 4',
];

final List<bool> angerselections = List.generate(product.length, (_) => true);

final List<Widget> pages = [
  Product1(),
  Product2(),
  Product3(),
  Product4(),
];