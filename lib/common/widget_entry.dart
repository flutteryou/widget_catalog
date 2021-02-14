import 'package:flutter/material.dart';

class WidgetEntry {
  WidgetEntry(this.name, this.widget)
      : assert(name != null, 'name cannot be empty'),
        assert(widget != null, 'widget cannot be null');
  final String name;
  final Widget widget;
}