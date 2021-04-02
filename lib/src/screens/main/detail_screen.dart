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
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Stack(
            children: [
              Row(children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    width: 300,
                    height: 240,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Container(
                        color: Colors.deepPurple,
                        child: Stack(
                          children: [
                            Positioned(
                                top: -60,
                                right: -60,
                                child: Transform.rotate(
                                  angle: 3.14 / 16,
                                  child: Container(
                                    margin: EdgeInsets.symmetric(vertical: 10),
                                    decoration: BoxDecoration(
                                      color: Colors.deepPurple.shade400,
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                    width: 160,
                                    height: 160,
                                  ),
                                )),
                            Positioned(
                                bottom: -54,
                                left: -54,
                                child: Transform.rotate(
                                  angle: 3.14 / 10,
                                  child: Container(
                                    margin: EdgeInsets.symmetric(vertical: 10),
                                    decoration: BoxDecoration(
                                      color: Colors.deepPurple.shade700,
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                    width: 160,
                                    height: 160,
                                  ),
                                )),
                            Center(
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(height: 18),
                                    Text(
                                      'Lorem Ipsum Dolor',
                                      style: TextStyle(
                                          fontSize: 26,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      'ipsum_dolor@lorem.com',
                                      style: TextStyle(
                                          fontSize: 18,
                                          color:
                                              Colors.white.withOpacity(0.66)),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ]),
              Container(
                  margin: EdgeInsets.only(top: 200, left: 10, right: 10),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.amber.shade800.withOpacity(0.3),
                                offset: const Offset(0, 10),
                                blurRadius: 60.0,
                              ), //BoxShadow
                            ]),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                    child: Container(
                                  padding: EdgeInsets.only(top: 30, bottom: 10),
                                  child: Image(
                                    image:
                                        AssetImage('images/man_freelancer.jpg'),
                                    fit: BoxFit.fill,
                                  ),
                                )),
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(width: 10),
                                Expanded(
                                    child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                        child: Text(
                                      'Lorem ipsum dolor sit amet',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    )),
                                    SizedBox(height: 10),
                                    Text(
                                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nisl tincidunt eget nullam non.',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                          color: Colors.grey),
                                    ),
                                    SizedBox(height: 20),
                                  ],
                                )),
                                SizedBox(width: 10),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 18, horizontal: 10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.amber.shade800.withOpacity(0.3),
                                offset: const Offset(0, 10),
                                blurRadius: 60.0,
                              ), //BoxShadow
                            ]),
                        child: Row(
                          children: [
                            Icon(Icons.location_on_outlined),
                            Text('Abc')
                          ],
                        ),
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
