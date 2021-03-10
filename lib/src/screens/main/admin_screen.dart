import 'package:flutter/material.dart';
import 'package:vena_store/src/screens/login_screen.dart';

class MainAdmin extends StatefulWidget {
  @override
  _MainAdminState createState() => _MainAdminState();
}

class _MainAdminState extends State<MainAdmin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: OutlineButton(
          child: Text('Nav'),
          onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Login(),
              )),
        ),
      ),
    );
  }
}
