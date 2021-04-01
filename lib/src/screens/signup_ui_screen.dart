import 'package:flutter/material.dart';
import 'package:vena_store/src/components/awesome_tab.dart';
import 'package:vena_store/src/components/awesome_text_field.dart';
import 'package:vena_store/src/components/signup_role_card.dart';
import 'package:vena_store/src/components/slider_tab.dart';
import 'package:vena_store/src/types/types.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  int _roleVal = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Colors.white,
        ),
        title: Text('Đăng ký'),
        backgroundColor: Colors.deepOrange.shade600,
      ),
      body: Column(
        children: [
          Expanded(
              child: Container(
            color: Colors.white,
            child: SingleChildScrollView(
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  child: Column(
                    children: [
                      AwesomeTextField(labelText: 'Email'),
                      AwesomeTextField(labelText: 'Mật khẩu'),
                      AwesomeTextField(labelText: 'Nhập lại mật khẩu'),
                      AwesomeTextField(labelText: 'Họ và tên'),
                      RoldeCard(),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Expanded(
                              child: RawMaterialButton(
                                child: Text('ĐĂNG KÝ'),
                                onPressed: () {},
                                padding: EdgeInsets.symmetric(vertical: 12),
                                fillColor: Colors.red,
                                textStyle:
                                TextStyle(
                                    color: Colors.white, fontSize: 16.0),
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(28.0))),
                              ))
                        ],
                      ),
                    ],
                  )),
            ),
          ))
        ],
      ),
    );
  }
}
