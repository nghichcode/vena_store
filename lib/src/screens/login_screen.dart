import 'dart:math';
import 'package:flutter/material.dart';
import 'package:vena_store/src/screens/main_screen.dart';

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

    int time = new DateTime.now().millisecondsSinceEpoch;
    const hash_token = crypt_lib.hash('BFRS' + '::' + config.encryption_key + '::' + time);

    const tokens = new TokenObj();
    tokens.mapobj({ token: hash_token, refresh_token: ''});
    const store = new StoreObj();
    const {realm} = this.props;
    saveUser(realm, {tokens: tokens.properties, store: store.properties});
    this.setState({processing: false});
    this.props.setLogin(true);
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
                    padding: EdgeInsets.only(left: 20, right: 20),
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
                                          BorderRadius.all(
                                              Radius.circular(20.0))),
                                      filled: true,
                                      fillColor: Colors.deepOrangeAccent
                                          .shade200),
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
                                          BorderRadius.all(
                                              Radius.circular(20.0))),
                                      filled: true,
                                      fillColor: Colors.deepOrangeAccent
                                          .shade200),
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
                                  TextStyle(
                                      color: Colors.white, fontSize: 16.0),
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
                                  TextStyle(
                                      color: Colors.white, fontSize: 16.0),
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
                                  TextStyle(
                                      color: Colors.white, fontSize: 16.0),
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
                                  onPressed: () {
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Main()),
                                    );
                                  },
                                  padding: EdgeInsets.symmetric(vertical: 12),
                                  textColor: Colors.deepPurple,
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(18.0))),
                                ))
                          ],
                        ),
                      ],
                    )),
              ),
            ),
          )),
    );
  }
}
