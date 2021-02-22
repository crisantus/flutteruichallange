import 'package:flutter/material.dart';

Widget drawer() {
  return Drawer(
    child: Container(
      color: Colors.grey[400],
      child: Column(
        children: [
          Container(
            height: 100.0,
            child: DrawerHeader(
                child: Center(
              child: Text(
                'Travel App',
                style: TextStyle(color: Colors.white,fontSize: 20),
              ),
            ),
            decoration: BoxDecoration(color: Colors.grey[850]),
            ),
          ),
          Text('Add anyThing Here')
        ],
      ),
    ),
  );
}
