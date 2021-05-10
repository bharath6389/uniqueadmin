import 'package:flutter/material.dart';
import 'package:unique/login.dart';
import 'package:unique/pages/Order.dart';
import 'package:unique/pages/commission.dart';
import 'package:unique/pages/customer.dart';
import 'package:unique/pages/discount.dart';
import 'package:unique/pages/navi%20home.dart';
import 'package:unique/pages/survey.dart';
import 'package:unique/pages/transaction.dart';

class NavigationDrawer extends StatefulWidget {
  @override
  _NavigationDrawerState createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      padding: EdgeInsets.zero,
      children: [
        createDrawerheader(context),
        SizedBox(
          height: 10.0,
        ),
        InkWell(
            child: Container(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                height: 40,
                alignment: Alignment.center,
                margin: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
                child: new Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Text(
                      "Home",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    )
                  ],
                )),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            }),
        InkWell(
            child: Container(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                height: 40,
                alignment: Alignment.center,
                margin: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
                child: new Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Text(
                      "Orders",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    )
                  ],
                )),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => OrderPage()),
              );
            }),
        InkWell(
            child: Container(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                height: 40,
                alignment: Alignment.center,
                margin: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
                child: new Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Text(
                      "Customers",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    )
                  ],
                )),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CustomerPage()),
              );
            }),
        Divider(thickness: 1),
        InkWell(
            child: Container(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                height: 40,
                alignment: Alignment.center,
                margin: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
                child: new Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Text(
                      "Transactions",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    )
                  ],
                )),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TransactionPage()),
              );
            }),
        InkWell(
            child: Container(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                height: 40,
                alignment: Alignment.center,
                margin: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
                child: new Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Text(
                      "Commission",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    )
                  ],
                )),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ComissionPage()),
              );
            }),
        Divider(thickness: 1),
        InkWell(
            child: Container(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                height: 40,
                alignment: Alignment.center,
                margin: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
                child: new Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Text(
                      "Discounts",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    )
                  ],
                )),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DiscountPage()),
              );
            }),
        InkWell(
            child: Container(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                height: 40,
                alignment: Alignment.center,
                margin: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
                child: new Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Text(
                      "Review and Survey",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    )
                  ],
                )),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SurveyPage()),
              );
            }),
        ListTile(
          title: Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 7.0),
                child: Text(
                  "Logout",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                ),
              )
            ],
          ),
          onTap: () {
            Navigator.pushAndRemoveUntil(context,
                MaterialPageRoute(builder: (_) => Login()), (route) => false);
          },
        ),
        Divider(thickness: 1),
        Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "App Version : ",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                "1.0.0",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        )
      ],
    ));
  }

  Widget createDrawerheader(context) {
    return DrawerHeader(
      decoration: BoxDecoration(
        color: Colors.purple,
      ),
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
            ),
            SizedBox(height: 5.0),
            Text(
              'Hi..User',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            SizedBox(height: 5.0),
            GestureDetector(
              child: Text(
                'Edit Profile',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
