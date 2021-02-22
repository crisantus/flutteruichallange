import 'package:flutter/material.dart';
import 'package:flutteruichallange/BottomNavigation/app_bar.dart';
import 'package:flutteruichallange/BottomNavigation/drawer.dart';
import 'package:flutteruichallange/BottomNavigation/screens/explore_screen.dart';
import 'package:flutteruichallange/BottomNavigation/screens/home_Screen.dart';
import 'package:flutteruichallange/BottomNavigation/screens/message_screen.dart';
import 'package:flutteruichallange/BottomNavigation/screens/profile_screen.dart';
import 'package:flutteruichallange/BottomNavigation/screens/reward_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Navigation extends StatefulWidget {
  Navigation({Key key}) : super(key: key);

  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    Explore(),
    Rewards(),
    Messages(),
    Profiles(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      drawer: drawer(),
      body: IndexedStack(
        index: _selectedIndex,
        children: _widgetOptions,),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.globe), title: Text("")),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.compass), title: Text("")),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.bars), title: Text("")),
          BottomNavigationBarItem(
              icon: Icon(Icons.message), title: Text("")),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_pin), title: Text("")),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        unselectedFontSize: 0.0,
        selectedFontSize: 0.0,
        selectedItemColor: Colors.pink[400],
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
        iconSize: 30.0,
      ),
    );
  }
}
