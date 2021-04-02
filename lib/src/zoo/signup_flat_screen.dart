import 'package:flutter/material.dart';

class SignUpFlat extends StatefulWidget {
  @override
  _SignUpFlatState createState() => _SignUpFlatState();
}

class _SignUpFlatState extends State<SignUpFlat> {
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
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/a_a.jpg'), fit: BoxFit.cover)),
            child: SingleChildScrollView(
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                              child: TextField(
                            style: TextStyle(color: Colors.black, fontSize: 18),
                            decoration: InputDecoration(
                                hintText: 'Email',
                                hintStyle: TextStyle(color: Colors.grey),
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 0, horizontal: 10),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.zero),
                                  borderSide: BorderSide.none,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.zero),
                                  borderSide: BorderSide.none,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.zero),
                                  borderSide: BorderSide.none,
                                ),
                                filled: true,
                                fillColor: Colors.white),
                          ))
                        ],
                      ),
                      SizedBox(
                        height: 1.5,
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: TextField(
                            style: TextStyle(color: Colors.black, fontSize: 18),
                            decoration: InputDecoration(
                                hintText: 'Mật khẩu',
                                hintStyle: TextStyle(color: Colors.grey),
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 0, horizontal: 10),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.zero),
                                  borderSide: BorderSide.none,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.zero),
                                  borderSide: BorderSide.none,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.zero),
                                  borderSide: BorderSide.none,
                                ),
                                filled: true,
                                fillColor: Colors.white),
                          ))
                        ],
                      ),
                      SizedBox(
                        height: 1.5,
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: TextField(
                            style: TextStyle(color: Colors.black, fontSize: 18),
                            decoration: InputDecoration(
                                hintText: 'Nhập lại mật khẩu',
                                hintStyle: TextStyle(color: Colors.grey),
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 0, horizontal: 10),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.zero),
                                  borderSide: BorderSide.none,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.zero),
                                  borderSide: BorderSide.none,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.zero),
                                  borderSide: BorderSide.none,
                                ),
                                filled: true,
                                fillColor: Colors.white),
                          ))
                        ],
                      ),
                      SizedBox(
                        height: 1.5,
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: TextField(
                            style: TextStyle(color: Colors.black, fontSize: 18),
                            decoration: InputDecoration(
                                hintText: 'Họ',
                                hintStyle: TextStyle(color: Colors.grey),
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 0, horizontal: 10),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.zero),
                                  borderSide: BorderSide.none,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.zero),
                                  borderSide: BorderSide.none,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.zero),
                                  borderSide: BorderSide.none,
                                ),
                                filled: true,
                                fillColor: Colors.white),
                          )),
                          SizedBox(
                            width: 1.5,
                          ),
                          Expanded(
                              child: TextField(
                            style: TextStyle(color: Colors.black, fontSize: 18),
                            decoration: InputDecoration(
                                hintText: 'Tên',
                                hintStyle: TextStyle(color: Colors.grey),
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 0, horizontal: 10),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.zero),
                                  borderSide: BorderSide.none,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.zero),
                                  borderSide: BorderSide.none,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.zero),
                                  borderSide: BorderSide.none,
                                ),
                                filled: true,
                                fillColor: Colors.white),
                          )),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        child: RoleTab(tabColor: Colors.white,),
                      )
                    ],
                  )),
            ),
          ))
        ],
      ),
    );
  }
}

class RoleTab extends StatefulWidget {
  final Color tabColor;

  RoleTab({this.tabColor = Colors.blue});

  @override
  _RoleTabState createState() => _RoleTabState();
}

class _RoleTabState extends State<RoleTab> with SingleTickerProviderStateMixin {
  final List<Tab> myTabs = <Tab>[
    Tab(
      child: Text(
        'Cửa hàng',
        style: TextStyle(color: Colors.grey.shade600),
      ),
    ),
    Tab(
      child: Text(
        'Admin',
        style: TextStyle(color: Colors.grey.shade600),
      ),
    ),
  ];
  final List<Widget> tabViews = <Widget>[
    Column(
      children: [
        SizedBox(
          height: 2,
        ),
        Row(
          children: [
            Expanded(
                child: TextField(
              style: TextStyle(color: Colors.black, fontSize: 18),
              decoration: InputDecoration(
                  hintText: 'Tên cửa hàng',
                  hintStyle: TextStyle(color: Colors.grey),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.zero),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.zero),
                    borderSide: BorderSide.none,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.zero),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.white),
            ))
          ],
        ),
        SizedBox(
          height: 1.5,
        ),
        Row(
          children: [
            Expanded(
                child: TextField(
              style: TextStyle(color: Colors.black, fontSize: 18),
              decoration: InputDecoration(
                  hintText: 'Mô tả',
                  hintStyle: TextStyle(color: Colors.grey),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.zero),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.zero),
                    borderSide: BorderSide.none,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.zero),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.white),
            ))
          ],
        ),
        SizedBox(
          height: 1.5,
        ),
        Row(
          children: [
            Expanded(
                child: TextField(
              style: TextStyle(color: Colors.black, fontSize: 18),
              decoration: InputDecoration(
                  hintText: 'Ảnh',
                  hintStyle: TextStyle(color: Colors.grey),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.zero),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.zero),
                    borderSide: BorderSide.none,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.zero),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.white),
            ))
          ],
        ),
        SizedBox(
          height: 1.5,
        ),
      ],
    ),
    Column(
      children: [
        SizedBox(
          height: 2,
        ),
        Row(
          children: [
            Expanded(
                child: TextField(
              style: TextStyle(color: Colors.black, fontSize: 18),
              decoration: InputDecoration(
                  hintText: 'Token',
                  hintStyle: TextStyle(color: Colors.grey),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.zero),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.zero),
                    borderSide: BorderSide.none,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.zero),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.white),
            ))
          ],
        ),
      ],
    ),
  ];
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: myTabs.length);
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
            tabs: myTabs,
          ),
        ),
        RoleTabView(
          controller: _tabController,
          tabViews: tabViews,
        )
      ],
    );
  }
}

class RoleTabView extends StatefulWidget {
  final TabController controller;
  final List<Widget> tabViews;

  RoleTabView({this.controller, this.tabViews});

  @override
  _RoleTabViewState createState() => _RoleTabViewState();
}

class _RoleTabViewState extends State<RoleTabView> {
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
