import 'package:flutter/material.dart';

typedef IndexCallback = void Function(int index);
typedef LabelWidgetBuilder = Widget Function(String label, int index, int activeIndex, IndexCallback callback);
