import 'package:flutter/material.dart';

class RowExpanded extends StatelessWidget {
  final Widget child;

  RowExpanded({@required this.child});

  @override
  Widget build(BuildContext context) {
    return Row(children: [Expanded(child: child)]);
  }
}

class ColumnExpanded extends StatelessWidget {
  final Widget child;

  ColumnExpanded({@required this.child});

  @override
  Widget build(BuildContext context) {
    return Column(children: [Expanded(child: child)]);
  }
}

class BorderTextField extends StatelessWidget {
  final String hintText;
  final EdgeInsetsGeometry contentPadding;
  final BorderRadius borderRadius;

  static const EdgeInsetsGeometry _contentPadding =
      EdgeInsets.symmetric(vertical: 0, horizontal: 20);
  static const BorderRadius _borderRadius =
      BorderRadius.all(Radius.circular(28.0));

  BorderTextField(
      {@required this.hintText,
      this.contentPadding = _contentPadding,
      this.borderRadius = _borderRadius});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey.shade50),
          contentPadding: contentPadding,
          border: OutlineInputBorder(
              borderSide: BorderSide.none, borderRadius: borderRadius),
          filled: true,
          fillColor: Colors.deepOrangeAccent.shade200),
    );
  }
}
