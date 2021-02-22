import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
            ),
            width: double.infinity,
            child: FlatButton(
              color: Colors.black12,
        onPressed: () {
        },
        child: Text('Navigate'),
      ),
          )),
    );
  }
}
