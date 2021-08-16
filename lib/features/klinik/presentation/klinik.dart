import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Klinik extends StatefulWidget {
  const Klinik({Key? key}) : super(key: key);

  @override
  _KlinikState createState() => _KlinikState();
}

class _KlinikState extends State<Klinik> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(CupertinoIcons.back),
                ),
                SizedBox(width: 20),
                Text(
                  'Klinik',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Container()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
