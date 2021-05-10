import 'package:flutter/material.dart';
import 'package:unique/dashboard.dart';
import 'package:unique/widgets/Navigation.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Center(
            child: Row(
          children: <Widget>[
            Text(
              "Unique",
              style: TextStyle(color: Colors.white),
            ),
          ],
        )),
        centerTitle: true,
        actions: <Widget>[],
      ),
      drawer: NavigationDrawer(),
      body: Dashboard(),
    );
  }
}
