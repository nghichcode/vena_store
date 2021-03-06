import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        color: Colors.orange.shade50,
        child: Center(
          child: Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 40),
                    child: Text(
                      "Fal Store",
                      style: TextStyle(
                          fontSize: 50,
                          color: Colors.deepOrange.shade800,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: TextField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                            hintText: 'Tài khoản',
                            hintStyle: TextStyle(color: Colors.white),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 0, horizontal: 20),
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.0))),
                            filled: true,
                            fillColor: Colors.deepOrangeAccent.shade200),
                      ))
                    ],
                  ),
                  Padding(padding: EdgeInsets.symmetric(vertical: 4)),
                  Row(
                    children: [
                      Expanded(
                          child: TextField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                            hintText: 'Mật khẩu',
                            hintStyle: TextStyle(color: Colors.white),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 0, horizontal: 20),
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.0))),
                            filled: true,
                            fillColor: Colors.deepOrangeAccent.shade200),
                      ))
                    ],
                  ),
                  Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                  Row(
                    children: [
                      Expanded(
                          child: RawMaterialButton(
                        child: Text('ĐĂNG NHẬP'),
                        onPressed: () {},
                        padding: EdgeInsets.symmetric(vertical: 12),
                        fillColor: Colors.deepOrange,
                        textStyle:
                            TextStyle(color: Colors.white, fontSize: 16.0),
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(18.0))),
                      ))
                    ],
                  ),
                  Padding(padding: EdgeInsets.symmetric(vertical: 2)),
                  Row(
                    children: [
                      Expanded(
                          child: RawMaterialButton(
                        child: Text('ĐĂNG KÝ'),
                        onPressed: () {},
                        padding: EdgeInsets.symmetric(vertical: 12),
                        fillColor: Colors.orange,
                        textStyle:
                            TextStyle(color: Colors.white, fontSize: 16.0),
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(18.0))),
                      ))
                    ],
                  ),
                  Padding(padding: EdgeInsets.symmetric(vertical: 2)),
                  Row(
                    children: [
                      Expanded(
                          child: RawMaterialButton(
                        child: Text('ĐĂNG NHẬP NHANH'),
                        onPressed: () {},
                        padding: EdgeInsets.symmetric(vertical: 12),
                        fillColor: Colors.lime.shade600,
                        textStyle:
                            TextStyle(color: Colors.white, fontSize: 16.0),
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(18.0))),
                      ))
                    ],
                  ),
                  Padding(padding: EdgeInsets.symmetric(vertical: 2)),
                  Row(
                    children: [
                      Expanded(
                          child: FlatButton(
                        child: Text('QUÊN MẬT KHẨU ?'),
                        onPressed: () {},
                        padding: EdgeInsets.symmetric(vertical: 12),
                        textColor: Colors.deepPurple,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(18.0))),
                      ))
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      )),
    );
  }
}
