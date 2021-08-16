import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:http/http.dart' as http;
import 'package:sentrahealth_dokter/constants/styles.dart';
import 'package:sentrahealth_dokter/features/chat/presentation/chat.dart';
import 'package:sentrahealth_dokter/features/monitoring/presentation/monitoring.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    _scaffoldKey.currentState!.openDrawer();
                  },
                  icon: Icon(TablerIcons.menu),
                ),
                Text(
                  'SentraHealth Doctor',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => Cari(),
                    //   ),
                    // );
                  },
                  icon: Icon(TablerIcons.search),
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  blurRadius: 20.0,
                  spreadRadius: 2.0,
                  offset: Offset(
                    0.0,
                    10.0,
                  ),
                ),
              ],
            ),
            child: Column(
              children: [
                Container(
                  padding:
                      EdgeInsets.only(left: 30, right: 30, top: 20, bottom: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Selamat datang',
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.6),
                                ),
                              ),
                              Text(
                                'Dr. Daffa Alvi',
                                style: TextStyle(
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.blueGrey.withOpacity(0.4),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: 5,
                        vertical: 5,
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 15,
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xff36CEB8),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(TablerIcons.heart, size: 30),
                              SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Pasien Sembuh',
                                    style: TextStyle(
                                      color: Colors.black.withOpacity(0.6),
                                    ),
                                  ),
                                  Text(
                                    '2',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(TablerIcons.shield_lock, size: 30),
                              SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Pasien Aktif',
                                    style: TextStyle(
                                      color: Colors.black.withOpacity(0.6),
                                    ),
                                  ),
                                  Text(
                                    '5',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                        top: 0,
                        right: 0,
                        left: 0,
                        child: Center(
                          child: Container(
                            height: 25,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(100),
                                bottomRight: Radius.circular(100),
                              ),
                            ),
                          ),
                        )),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  blurRadius: 20.0,
                  spreadRadius: 2.0,
                  offset: Offset(
                    0.0,
                    10.0,
                  ),
                ),
              ],
            ),
            transform: Matrix4.translationValues(0, 0, 0),
            margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 0),
            padding: EdgeInsets.symmetric(vertical: 15.0),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.ceter,
              children: [
                GridView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: (MediaQuery.of(context).size.width) /
                        (MediaQuery.of(context).size.width - 180),
                  ),
                  children: <Widget>[
                    menuArea('Monitoring', Colors.orange, Monitoring(),
                        TablerIcons.device_tv),
                    menuArea(
                        'Chat', Colors.lightBlue, Chat(), TablerIcons.message),
                    menuArea('Klinik Terdekat', Colors.green, HomePage(),
                        TablerIcons.shield_check),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              'Artikel',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 30),
          Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          blurRadius: 20.0,
                          spreadRadius: 2.0,
                          offset: Offset(
                            0.0,
                            10.0,
                          ),
                        ),
                      ],
                    ),
                    width: 180,
                    margin: EdgeInsets.only(
                      right: 20,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 100,
                          width: 180,
                          decoration: BoxDecoration(
                              color: Palletes.PrimaryColor,
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Benar kah meminum air kelapa dapat menyebabakan ginjal?',
                                style: TextStyles.blackBoldFontStyle,
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 5,
                                ),
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Text(
                                  'Ginjal',
                                  style: TextStyles.normalFontStyle,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          blurRadius: 20.0,
                          spreadRadius: 2.0,
                          offset: Offset(
                            0.0,
                            10.0,
                          ),
                        ),
                      ],
                    ),
                    width: 180,
                    margin: EdgeInsets.only(
                      right: 20,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 100,
                          width: 180,
                          decoration: BoxDecoration(
                              color: Palletes.PrimaryColor,
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Benar kah meminum air kelapa dapat menyebabakan ginjal?',
                                style: TextStyles.blackBoldFontStyle,
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 5,
                                ),
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Text(
                                  'Ginjal',
                                  style: TextStyles.normalFontStyle,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }

  Widget menuArea(menu, warna, pages, icon) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => pages,
          ),
        );
      },
      child: Container(
        child: Column(
          children: <Widget>[
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: warna.withOpacity(0.4)),
              child: Center(
                child: Icon(icon, color: warna),
              ),
            ),
            SizedBox(height: 5),
            Text(menu, textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}
