import 'dart:ui';

import 'package:flutter/material.dart';

class MainDetail extends StatefulWidget {
  @override
  _MainDetailState createState() => _MainDetailState();
}

Widget _row = Padding(
  padding: EdgeInsets.symmetric(vertical: 6.0),
  child: Column(
    children: [
      Row(
        children: [
          Text('Tài khoản',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              )),
          Padding(
            padding: EdgeInsets.only(left: 12.0),
            child: Text('admin',
                style: TextStyle(
                  color: Colors.grey.shade600,
                )),
          )
        ],
      ),
      SizedBox(
        height: 4.0,
      ),
      Divider()
    ],
  ),
);

class _MainDetailState extends State<MainDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 8.0,
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage('images/boy.jpg'),
                      // child: Image.asset('images/boy.jpg'),
                      backgroundColor: Colors.red,
                      radius: 50,
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      'Nguyễn Văn Nam',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      'nvn',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.grey),
                    ),
                    SizedBox(
                      height: 16.0,
                    ),
                  ],
                )),
              ],
            ),
            _row,
            _row,
            _row,
            _row,
          ],
        ),
      ),
    );
  }
}
