import 'package:flutter/material.dart';
import 'package:vending/pages/about_us.dart';
import 'package:vending/pages/contact_us.dart';
import 'package:vending/pages/home.dart';

class Root extends StatefulWidget {
  Root({Key? key}) : super(key: key);

  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {
  @override
  int _currentIndex = 0;
  final tabs = [
    Home(),
    About(),
    Contact(),
  ];
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // appBar: AppBar(
        //   automaticallyImplyLeading: false,
        //   titleTextStyle: const TextStyle(height: 2.0),
        //   elevation: 0.0,
        //   backgroundColor: Colors.black,
        //   title: const Text(
        //     "Home",
        //     style: TextStyle(
        //         color: Colors.yellow,
        //         fontFamily: 'Roboto',
        //         fontSize: 18.0,
        //         fontWeight: FontWeight.w800),
        //   ),
        //   centerTitle: true,

        // ),
        //
        body: tabs[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.pink,
          unselectedLabelStyle: const TextStyle(
              fontFamily: 'Roboto', fontWeight: FontWeight.w500, fontSize: 10),
          selectedLabelStyle: const TextStyle(
              fontFamily: 'Roboto', fontWeight: FontWeight.w500, fontSize: 10),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.settings_accessibility_outlined,
              ),
              label: 'About Us',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.call,
              ),
              label: 'Contact Us',
            ),
            // BottomNavigationBarItem(
            //   icon: Icon(
            //     Icons.person_pin,
            //   ),
            //   label: 'Profile',
            // ),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
