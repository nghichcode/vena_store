import 'package:flutter/material.dart';

class MainDetail extends StatefulWidget {
  @override
  _MainDetailState createState() => _MainDetailState();
}

class _MainDetailState extends State<MainDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Padding(
          padding: EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
          child: TextField(
            style: TextStyle(color: Colors.grey.shade800),
            decoration: InputDecoration(
              hintText: 'Tài khoản',
              hintStyle: TextStyle(color: Colors.grey),
              filled: true,
              fillColor: Colors.grey.shade200,
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 8),
              border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(Radius.circular(8.0))),
            ),
          ),
        ),
        titleSpacing: 0,
        actions: [
          Icon(
            Icons.qr_code,
            color: Colors.black,
            size: 40,
          )
        ],
      ),
      body: Center(
        child: Text('Main Detail'),
      ),
    );
  }
}
