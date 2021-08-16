import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:http/http.dart' as http;
import 'package:sentrahealth_dokter/features/monitoring/presentation/notification.dart';

class Monitoring extends StatefulWidget {
  const Monitoring({Key? key}) : super(key: key);

  @override
  _MonitoringState createState() => _MonitoringState();
}

class _MonitoringState extends State<Monitoring> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 30),
          Container(
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
                  'Monitoring',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Container()
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 3,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  color: Colors.white,
                  child: Column(
                    children: [
                      InkWell(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 10),
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Center(
                                      child: Icon(TablerIcons.user,
                                          color: Colors.white)),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Nabil',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                    Text('70% Sembuh')
                                  ],
                                ),
                              ],
                            ),
                            IconButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Notifikasi(
                                        nama: 'Nabil', phone: '085254257455'),
                                  ),
                                );
                              },
                              icon: Icon(TablerIcons.notification,
                                  color: Colors.blue),
                            ),
                          ],
                        ),
                        onTap: () {},
                      ),
                      Divider(),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
