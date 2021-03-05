import 'package:flutter/material.dart';
import 'package:vena_store/src/screen/main/admin_screen.dart';
import 'package:vena_store/src/screen/main/calculate_screen.dart';
import 'package:vena_store/src/screen/main/detail_screen.dart';
import 'package:vena_store/src/screen/main/search_screen.dart';
import 'package:vena_store/src/screen/main/store_screen.dart';

class Main extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}

class TabData {
  final String name;
  final IconData icon;
  final Widget widget;

  const TabData({this.name, this.icon, this.widget});
}

List<BottomNavigationBarItem> renderBottomTabs(List<TabData> tabList) {
  return tabList
      .map(
        (TabData tab) => BottomNavigationBarItem(
          icon: Icon(tab.icon),
          label: tab.name,
        ),
      )
      .toList();
}

class _MainState extends State<Main> {
  int _selectedIndex = 0;

  final tabList = <TabData>[
    TabData(name: 'Admin', icon: Icons.person_outline, widget: MainAdmin()),
    TabData(name: 'Cửa Hàng', icon: Icons.home_outlined, widget: MainStore()),
    TabData(
        name: 'Tìm Kiếm', icon: Icons.search_outlined, widget: MainSearch()),
    TabData(
        name: 'Tính Toán',
        icon: Icons.calculate_outlined,
        widget: MainCalculate()),
    TabData(
        name: 'Thông Tin',
        icon: Icons.person_pin_outlined,
        widget: MainDetail()),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        color: Colors.orange.shade50,
        child: tabList[_selectedIndex].widget,
      )),
      bottomNavigationBar: BottomNavigationBar(
        items: renderBottomTabs(tabList),
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        unselectedItemColor: Colors.grey.shade800,
        onTap: _onItemTapped,
      ),
    );
  }
}
