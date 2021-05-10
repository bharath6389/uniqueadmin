import 'package:flutter/material.dart';
import 'package:unique/pages/dupatta.dart';
import 'package:unique/pages/kurthi.dart';
import 'package:unique/pages/leggin.dart';
import 'package:unique/pages/lehenga.dart';

class DressesPage extends StatefulWidget {
  @override
  _DressesPageState createState() => _DressesPageState();
}

class _DressesPageState extends State<DressesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Center(
            child: Text(
          "Dresses",
          style: TextStyle(color: Colors.white),
        )),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10.0),
          child: Column(children: [
            SizedBox(
              height: 20.0,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LehengaPage()),
                );
              },
              child: Container(
                padding: EdgeInsets.only(left: 10.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.purple),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      bottomLeft: Radius.circular(10.0),
                      topRight: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(
                      child: Image(
                        height: 250.0,
                        width: 200.0,
                        image: AssetImage('assets/images/lehenga.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    Center(
                      child: Text(
                        'Lehengas',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => KurthiPage()),
                );
              },
              child: Container(
                padding: EdgeInsets.only(left: 10.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.purple),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      bottomLeft: Radius.circular(10.0),
                      topRight: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Image(
                        height: 250.0,
                        width: 200.0,
                        image: AssetImage('assets/images/kurthi.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    Center(
                      child: Text(
                        'Kurthis',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DupattaPage()),
                );
              },
              child: Container(
                padding: EdgeInsets.only(left: 10.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.purple),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      bottomLeft: Radius.circular(10.0),
                      topRight: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Image(
                        height: 250.0,
                        width: 200.0,
                        image: AssetImage('assets/images/dupatta.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    Center(
                      child: Text(
                        'Dupattas',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LegginsPage()),
                );
              },
              child: Container(
                padding: EdgeInsets.only(left: 10.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.purple),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      bottomLeft: Radius.circular(10.0),
                      topRight: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Image(
                        height: 250.0,
                        width: 200.0,
                        image: AssetImage('assets/images/leggins.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    Center(
                      child: Text(
                        'Leggins',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
