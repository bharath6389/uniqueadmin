import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:unique/home.dart';
import 'package:unique/widgets/BottombarWidget.dart';

class Otppage extends StatefulWidget {
  @override
  _OtppageState createState() => _OtppageState();
}

class _OtppageState extends State<Otppage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Center(
            child: Text(
          "Unique",
          style: TextStyle(color: Colors.white),
        )),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 50.0),
        child: Center(
          child: Column(children: [
            Image(
              image: AssetImage("assets/images/phone.png"),
              height: 200.0,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: TextFormField(
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                ),
                decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      child: Icon(Icons.email, color: Colors.black),
                    ),
                    contentPadding: EdgeInsets.all(18),
                    labelText: "Enter OTP"),
                maxLength: 4,
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ],
              ),
            ),
            Spacer(),
            BottomBarWidget(
              text: "Verify",
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
            ),
          ]),
        ),
      ),
    );
  }
}
