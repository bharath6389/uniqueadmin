import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:convert';
import 'package:intl/intl.dart';
import 'package:unique/widgets/BottombarWidget.dart';

class CottonPage extends StatefulWidget {
  @override
  _CottonPageState createState() => _CottonPageState();
}

class _CottonPageState extends State<CottonPage> {
  final _key = new GlobalKey<FormState>();

  File _image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.purple,
        ),
        body: SingleChildScrollView(
          child: Form(
            key: _key,
            child: Column(children: [
              Card(
                elevation: 6.0,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 16.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.camera_alt,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text('Upload Photo')
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          showModalBottomSheet(
                              context: context,
                              builder: ((builder) => bottomsheet()));
                        },
                        child: Container(
                          height: 100,
                          width: 100,
                          color: Colors.black12,
                          child: _image == null
                              ? Icon(Icons.add_a_photo)
                              : Image.file(
                                  _image,
                                  height: 100,
                                  width: 100,
                                ),
                        ),
                      ),
                    ],
                  ),
                ),
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
                      padding: EdgeInsets.only(left: 20, right: 15),
                      child: Icon(Icons.design_services, color: Colors.black),
                    ),
                    contentPadding: EdgeInsets.all(18),
                    labelText: "Enter Design",
                  ),
                ),
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
                      padding: EdgeInsets.only(left: 20, right: 15),
                      child: Icon(Icons.color_lens, color: Colors.black),
                    ),
                    contentPadding: EdgeInsets.all(18),
                    labelText: "Enter Color",
                  ),
                ),
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
                      padding: EdgeInsets.only(left: 20, right: 15),
                      child: Icon(Icons.money, color: Colors.black),
                    ),
                    contentPadding: EdgeInsets.all(18),
                    labelText: "Enter Price",
                  ),
                ),
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
                      padding: EdgeInsets.only(left: 20, right: 15),
                      child: Icon(Icons.production_quantity_limits,
                          color: Colors.black),
                    ),
                    contentPadding: EdgeInsets.all(18),
                    labelText: "Enter quantity",
                  ),
                ),
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
                      padding: EdgeInsets.only(left: 20, right: 15),
                      child: Icon(Icons.money_off, color: Colors.black),
                    ),
                    contentPadding: EdgeInsets.all(18),
                    labelText: "Enter Discount",
                  ),
                ),
              ),
              BottomBarWidget(
                text: "Submit",
                onTap: () {},
              ),
            ]),
          ),
        ));
  }

  Future _getImage(ImageSource source) async {
    var image = await ImagePicker.pickImage(source: source);
    setState(() {
      _image = image;
    });
  }

  Widget bottomsheet() {
    return Container(
      height: 100.0,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 20.0,
      ),
      child: Column(children: <Widget>[
        Text(
          "Choose Featuring Image",
          style: TextStyle(
            fontSize: 20.0,
          ),
          overflow: TextOverflow.ellipsis,
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            FlatButton.icon(
                onPressed: () {
                  Navigator.pop(context);
                  _getImage(ImageSource.camera);
                },
                icon: Icon(Icons.camera),
                label: Text(
                  'Camera',
                  overflow: TextOverflow.ellipsis,
                )),
            FlatButton.icon(
                onPressed: () {
                  Navigator.pop(context);
                  _getImage(ImageSource.gallery);
                },
                icon: Icon(Icons.image),
                label: Text(
                  'Gallery',
                  overflow: TextOverflow.ellipsis,
                )),
          ],
        ),
      ]),
    );
  }
}
