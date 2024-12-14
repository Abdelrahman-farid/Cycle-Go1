import 'package:flutter/material.dart';
import 'package:highsea1/Homepage.dart';
import 'package:highsea1/favourits.dart';
import 'package:highsea1/settingpage.dart';

class Firstpage extends StatefulWidget {
  const Firstpage({super.key});

  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  int currentindex = 0; // Move this inside the State class
  List pages = [
    const Homepage(),
    const Favourites(),
    const SettingsPage()
  ];

  void onTap(int index) {
    setState(() {
      currentindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentindex], // Use the currentindex to show the correct page
      bottomNavigationBar: BottomNavigationBar(
         onTap: onTap,
        currentIndex: currentindex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        elevation: 0,
        items: const [
          BottomNavigationBarItem(
              label: "Home", icon: Icon(Icons.home)), // Pass a String to label
          BottomNavigationBarItem(
              label: "Favourites", icon: Icon(Icons.favorite)),
          BottomNavigationBarItem(
              label: "Settings", icon: Icon(Icons.settings)),
        ],
      ),
    );
  }
}
