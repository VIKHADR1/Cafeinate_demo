import 'package:flutter/material.dart';
import 'package:flutter_1/main.dart';
import 'package:flutter_1/promotion.dart';

class Wrapper extends StatefulWidget {
  Wrapper();

  _WrapperState createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  int _currentIndex = 0;
  final List<Widget> _children = [MyApp(), Promotion()];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            label: '',
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.account_circle),
          //   label: '',
          // )
        ],
      ),
    );
  }
}
