import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:unique/otp.dart';
import 'package:unique/widgets/BottombarWidget.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
        padding: const EdgeInsets.only(top: 15.0),
        child: Center(
          child: Column(children: [
            Image(image: AssetImage("assets/images/design.png")),
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
                    padding: EdgeInsets.only(left: 20, right: 15),
                    child: Icon(Icons.phone, color: Colors.black),
                  ),
                  contentPadding: EdgeInsets.all(18),
                  labelText: "Enter Phone Number",
                  prefix: Padding(
                    padding: EdgeInsets.all(4),
                    child: Text('+91'),
                  ),
                ),
                maxLength: 10,
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
                    MaterialPageRoute(builder: (context) => Otppage()));
              },
            ),
          ]),
        ),
      ),
    );
  }
}
