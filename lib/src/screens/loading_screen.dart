import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:vena_store/src/screens/login_screen.dart';
import 'package:vena_store/src/screens/main_screen.dart';

Future<String> fetchUser() async {
  var client = http.Client();
  var response =
      await client.get('https://jsonplaceholder.typicode.com/users/1');
  return response.body;
}

class Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String>(
        future: fetchUser(),
        builder: (buildContext, AsyncSnapshot<String> snapshot) {
          return Main(); // Debug
          // return SignUp(); // Debug
          if (snapshot.hasData) {
            return Main();
          } else if (snapshot.hasError) {
            return Login();
          }
          return Scaffold(
            body: SafeArea(
                child: Container(
              color: Colors.orange.shade50,
              child: Center(
                child: Text(
                  'LOADING...',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepOrange),
                ),
              ),
            )),
          );
        });
  }
}
