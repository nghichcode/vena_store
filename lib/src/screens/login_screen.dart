import 'package:flutter/material.dart';
import 'package:vena_store/src/components/pure.dart';
import 'package:vena_store/src/screens/main_screen.dart';
import 'file:///D:/space/vena_store/lib/src/screens/signup/signup_screen.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

enum MODAL_TYPE { PROCESSING, SHOW, HIDE }

class _LoginState extends State<Login> {
  MODAL_TYPE _modal_type = MODAL_TYPE.HIDE;

  handleGuestLogin() {
    setState(() {
      _modal_type = MODAL_TYPE.PROCESSING;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        color: Colors.orange.shade50,
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 40),
                      child: Text(
                        "Vena Store",
                        style: TextStyle(
                            fontSize: 50,
                            color: Colors.deepOrange.shade800,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    RowExpanded(child: BorderTextField(hintText: 'Tài khoản')),
                    Padding(padding: EdgeInsets.symmetric(vertical: 4)),
                    RowExpanded(child: BorderTextField(hintText: 'Mật khẩu')),
                    Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                    RowExpanded(
                        child: RawMaterialButton(
                      child: Text('ĐĂNG NHẬP'),
                      onPressed: () {},
                      padding: EdgeInsets.symmetric(vertical: 12),
                      fillColor: Colors.deepOrange,
                      textStyle: TextStyle(color: Colors.white, fontSize: 16.0),
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(28.0))),
                    )),
                    Padding(padding: EdgeInsets.symmetric(vertical: 2)),
                    RowExpanded(
                        child: RawMaterialButton(
                      child: Text('ĐĂNG KÝ'),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignUp()),
                        );
                      },
                      padding: EdgeInsets.symmetric(vertical: 12),
                      fillColor: Colors.orange,
                      textStyle: TextStyle(color: Colors.white, fontSize: 16.0),
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(28.0))),
                    )),
                    Padding(padding: EdgeInsets.symmetric(vertical: 2)),
                    RowExpanded(
                        child: RawMaterialButton(
                      child: Text('ĐĂNG NHẬP NHANH'),
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => Main()),
                        );
                      },
                      padding: EdgeInsets.symmetric(vertical: 12),
                      fillColor: Colors.lime.shade600,
                      textStyle: TextStyle(color: Colors.white, fontSize: 16.0),
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(28.0))),
                    )),
                    Padding(padding: EdgeInsets.symmetric(vertical: 2)),
                    RowExpanded(
                        child: FlatButton(
                      child: Text('QUÊN MẬT KHẨU ?'),
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => Main()),
                        );
                      },
                      padding: EdgeInsets.symmetric(vertical: 12),
                      textColor: Colors.deepPurple,
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(28.0))),
                    )),
                  ],
                )),
          ),
        ),
      )),
    );
  }
}
