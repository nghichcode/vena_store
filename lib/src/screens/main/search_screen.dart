import 'package:flutter/material.dart';
import 'package:vena_store/src/components/search_bar.dart';

class MainSearch extends StatefulWidget {
  @override
  _MainSearchState createState() => _MainSearchState();
}

class _MainSearchState extends State<MainSearch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SearchBar(),
      body: Center(
        child: Text('Main Search'),
      ),
    );
  }
}
