import 'package:flutter/material.dart';

class DiscountPage extends StatefulWidget {
  @override
  _DiscountPageState createState() => _DiscountPageState();
}

class _DiscountPageState extends State<DiscountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Center(
            child: Text(
          "Discounts",
          style: TextStyle(color: Colors.white),
        )),
      ),
    );
  }
}
