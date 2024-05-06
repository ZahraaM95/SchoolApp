

import 'package:flutter/material.dart';

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Text('الرئيسية'),
    Text('التصنيف'),
    Text('المجتمع'),
    Text('الحساب'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return 
      //  Center(
      //   child: _widgetOptions.elementAt(_selectedIndex),
      // ),
       BottomNavigationBar(
        
          type: BottomNavigationBarType.fixed,
          selectedLabelStyle: const TextStyle(
            color: Colors.black,
           
            ),
          selectedItemColor: Colors.black,

          selectedIconTheme: const IconThemeData(color: Colors.black),
        items: 
       const <BottomNavigationBarItem>[
       BottomNavigationBarItem(
        
            icon: Icon(Icons.home),
            label: 'الرئيسية',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'التصنيف',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'المجتمع',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'الحساب',
          ),
        ],
 
     
        currentIndex: _selectedIndex,
      
        onTap: _onItemTapped,
      
    );
  }
}
