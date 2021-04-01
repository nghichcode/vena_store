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
                    Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 20, top: 48),
                          child: Card(
                            elevation: 3.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                            child: Row(
                              children: [
                                Expanded(
                                    child: Padding(
                                  padding: EdgeInsets.only(bottom: 40, top: 60),
                                  child: Column(
                                    children: [
                                      Text(
                                        'Nguyễn Văn Nam',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 10),
                                        child: Text(
                                          'nvn@abc.com',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                              color: Colors.grey),
                                        ),
                                      ),
                                    ],
                                  ),
                                ))
                              ],
                            ),
                          ),
                        ),
                        Container(
                          child: Center(
                            child: Stack(
                              children: [
                                Container(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image(
                                      image: AssetImage('images/boy.jpg'),
                                      height: 80,
                                      width: 80,
                                    ),
                                  ),
                                  padding: EdgeInsets.all(10),
                                  color: Colors.deepOrange,
                                )
                              ],
                            ),
                            // child: CircleAvatar(
                            //   backgroundImage: AssetImage('images/boy.jpg'),
                            //   // child: Image.asset('images/boy.jpg'),
                            //   backgroundColor: Colors.red,
                            //   radius: 50,
                            // )
                          ),
                        ),
                      ],
                    )
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
