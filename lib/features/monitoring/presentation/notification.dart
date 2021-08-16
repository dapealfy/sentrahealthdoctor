import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:http/http.dart' as http;

class Notifikasi extends StatefulWidget {
  final String nama;
  final String phone;
  Notifikasi({required this.nama, required this.phone});
  @override
  _NotifikasiState createState() => _NotifikasiState();
}

class _NotifikasiState extends State<Notifikasi> {
  TextEditingController descriptionController = TextEditingController();

  var loading_notifikasi = false;

  var nama_lengkap;
  var family_member_id;

  // Send Notifikasi
  void _sendNotifikasi() async {
    setState(() {
      loading_notifikasi = true;
    });
    var url = "https://api.thebigbox.id/sms-Notifikasi/2.0.0/messages";
    final response = await http.post(Uri.parse(url), headers: {
      'Accept': 'application/json',
      'X-MainAPI-Username': 'nblakbar10',
      'X-MainAPI-Password': 'poseidon123',
      'X-MainAPI-Senderid': 'SentraHealth',
      'x-api-key': 'G7PwE2L0UQdiXzi3IV8P5CdjB5J4pFwS',
      'Content-Type': 'application/x-www-form-urlencoded',
    }, body: {
      'msisdn': widget.phone,
      'content': descriptionController.text.toString(),
    });
    Map<String, dynamic> notifikasi;

    notifikasi = json.decode(response.body);
    debugPrint(notifikasi.toString());

    setState(() {
      loading_notifikasi = false;
    });
    Navigator.pop(context);
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
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
                  'Kirim Notifikasi ' + widget.nama,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                loading_notifikasi == false
                    ? Container()
                    : TextButton(
                        onPressed: () {},
                        child: Container(
                          height: 20,
                          width: 20,
                          child: CircularProgressIndicator(),
                        ),
                      ),
              ],
            ),
          ),
          Container(
            color: Colors.white,
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: TextFormField(
              maxLines: 10,
              controller: descriptionController,
              decoration:
                  InputDecoration.collapsed(hintText: "Keterangan Notifikasi"),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
        backgroundColor: loading_notifikasi == true ? Colors.grey : Colors.blue,
        onPressed: () async {
          _sendNotifikasi();
        },
        label: Container(
          width: MediaQuery.of(context).size.width - 80,
          child: Center(
            child: Text(
              "Kirim",
              style: TextStyle(
                color: Colors.white.withOpacity(0.7),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
