import 'package:flutter/material.dart';

class AwesomeTab extends StatefulWidget {
  final List<Widget> tabViews;
  final List<Widget> tabs;

  final Color tabColor;
  final Color activeTabColor;

  AwesomeTab(
      {this.tabViews = const <Widget>[],
      this.tabs = const <Widget>[],
      this.tabColor = Colors.blue,
      this.activeTabColor = Colors.green});

  @override
  _AwesomeTabState createState() => _AwesomeTabState();
}

class _AwesomeTabState extends State<AwesomeTab>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(vsync: this, length: this.widget.tabs.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: this.widget.tabColor,
          child: TabBar(
            controller: _tabController,
            indicator: BoxDecoration(),
            tabs: this.widget.tabs,
          ),
        ),
        AwesomeTabView(
          controller: _tabController,
          tabViews: this.widget.tabViews,
        )
      ],
    );
  }
}

class AwesomeTabView extends StatefulWidget {
  final TabController controller;
  final List<Widget> tabViews;

  AwesomeTabView({this.controller, this.tabViews});

  @override
  _AwesomeTabViewState createState() => _AwesomeTabViewState();
}

class _AwesomeTabViewState extends State<AwesomeTabView> {
  int _selectedIndex = -1;

  @override
  void initState() {
    super.initState();
    if (this.widget.tabViews == null)
      throw FlutterError('tabViews can not be null');
    if (this.widget.controller == null)
      throw FlutterError('controller can not be null');

    _selectedIndex = this.widget.controller.index;
    this.widget.controller.addListener(() {
      if (_selectedIndex != this.widget.controller.index)
        setState(() => _selectedIndex = this.widget.controller.index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: this.widget.tabViews[_selectedIndex],
    );
  }
}
