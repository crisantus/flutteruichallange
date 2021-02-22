import 'package:flutter/material.dart';

class Explore extends StatelessWidget {
  const Explore({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.black87,
        child: Center(
            child: Text(
          "Our New Explore Screen",
          style: TextStyle(color: Colors.white),
        )));
  }
}
