import 'package:flutter/material.dart';

class AwesomeTextField extends StatefulWidget {
  final String labelText;
  final double textSize;
  final EdgeInsetsGeometry textPadding;
  final EdgeInsetsGeometry contentPadding;

  AwesomeTextField({
    this.labelText,
    this.textSize = 18,
    this.textPadding = const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
    this.contentPadding = const EdgeInsets.only(bottom: 16),
  });

  @override
  _AwesomeTextFieldState createState() => _AwesomeTextFieldState();
}

class _AwesomeTextFieldState extends State<AwesomeTextField> {
  final FocusNode _focusNode = new FocusNode();

  final Color _focusColor = Color(0xff50c594);
  final Color _baseColor = Color(0xfff3f3f7);
  final Color _baseLabelColor = Colors.black;
  final double _borderRadius = 8.0;
  final double _borderWidth = 2.0;

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        child: Padding(
          padding: this.widget.contentPadding,
          child: TextField(
            focusNode: _focusNode,
            style: TextStyle(
                color: _baseLabelColor, fontSize: this.widget.textSize),
            decoration: InputDecoration(
              isDense: true,
              contentPadding: this.widget.textPadding,
              floatingLabelBehavior: FloatingLabelBehavior.always,
              labelText: this.widget.labelText,
              labelStyle: TextStyle(
                  color: _focusNode.hasFocus ? _focusColor : _baseLabelColor,
                  backgroundColor: Colors.transparent),
              border: OutlineInputBorder(
                  borderRadius:
                      BorderRadius.all(Radius.circular(_borderRadius)),
                  borderSide:
                      BorderSide(color: _baseColor, width: _borderWidth)),
              enabledBorder: OutlineInputBorder(
                  borderRadius:
                      BorderRadius.all(Radius.circular(_borderRadius)),
                  borderSide:
                      BorderSide(color: _baseColor, width: _borderWidth)),
              focusedBorder: OutlineInputBorder(
                  borderRadius:
                      BorderRadius.all(Radius.circular(_borderRadius)),
                  borderSide:
                      BorderSide(color: _focusColor, width: _borderWidth)),
            ),
          ),
        ),
      )
    ]);
  }
}
