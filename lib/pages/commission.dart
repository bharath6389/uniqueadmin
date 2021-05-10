import 'package:flutter/material.dart';

class ComissionPage extends StatefulWidget {
  @override
  _ComissionPageState createState() => _ComissionPageState();
}

class _ComissionPageState extends State<ComissionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Center(
            child: Text(
          "Commission",
          style: TextStyle(color: Colors.white),
        )),
      ),
    );
  }
}
