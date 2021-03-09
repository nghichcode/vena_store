import 'package:flutter/material.dart';
import 'package:vena_store/src/screens/loading_screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Vena Store',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Loading(),
      debugShowCheckedModeBanner: false,
    );
  }
}
