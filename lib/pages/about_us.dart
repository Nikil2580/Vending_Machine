import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.pink.shade300,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          titleTextStyle: const TextStyle(height: 2.0),
          elevation: 0.0,
          backgroundColor: Colors.pink.shade300,
          title: const Text(
            "About Us",
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'Roboto',
                fontSize: 18.0,
                fontWeight: FontWeight.w800),
          ),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                shadowColor: Colors.grey,
                elevation: 20,
                child: SizedBox(width: 400,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      child: Text("We, the team Queen Warriors  is working harder to ensure our vision, for the safety of our future generation by giving our innovation to live in a healthier and safer environment. Our dedication to the creation of the products not only seen in delivering a easier and safer product from our Vending machine even in our commitment to the customers in giving the service and also by providing the safe and secured disposal of napkins by our Incinerator. We are open for gathering the knowledge from customers in full-filling their need of requirements in customizing the products with state of an art quality in developing the products. We make the incinerators as per the pollution norms to make it less pollutant to the environment which leads to our vision of making a safer future.",
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                shadowColor: Colors.grey,
                elevation: 10,
                child: SizedBox(width: 400,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      child: Text("Our Vision:\nTo emphasis the safe and hygienic sanitary napkins and a safe disposal to all the places of women community.To admire our clients by giving the excellent products as best as possible and also to feel all the women safe and hygienic while using our products.Building a solution by incorporating with the society to solve the challenges faced by the women during mensuration.Creating a eco - friendly environment.",
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ),
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}

