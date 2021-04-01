import 'package:flutter/material.dart';
import 'package:vena_store/src/types/types.dart';

class SliderTab extends StatefulWidget {
  final LabelWidgetBuilder tabBuilder;
  final List<String> tabLabels;
  final List<Widget> tabViews;

  final Color tabColor;
  final double tabHeight;

  SliderTab({
    @required this.tabBuilder,
    this.tabLabels = const <String>[],
    this.tabViews = const <Widget>[],
    this.tabColor = Colors.blue,
    this.tabHeight = 48.0,
  });

  @override
  _SliderTabState createState() => _SliderTabState();
}

class _SliderTabState extends State<SliderTab>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  // int selectedIndex;

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(vsync: this, length: this.widget.tabLabels.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  void onItemSelected(int index) {
    setState(() => _tabController.index = index);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: this.widget.tabColor,
          child: SizedBox(
            height: this.widget.tabHeight,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: this.widget.tabLabels.length,
              itemBuilder: (context, index) => this.widget.tabBuilder(
                  this.widget.tabLabels[index],
                  index,
                  _tabController.index,
                  onItemSelected),
            ),
          ),
        ),
        SliderTabView(
          controller: _tabController,
          tabViews: this.widget.tabViews,
        )
      ],
    );
  }
}

class SliderTabView extends StatefulWidget {
  final TabController controller;
  final List<Widget> tabViews;

  SliderTabView({this.controller, this.tabViews});

  @override
  _SliderTabViewState createState() => _SliderTabViewState();
}

class _SliderTabViewState extends State<SliderTabView> {
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
