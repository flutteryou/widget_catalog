import 'package:flutter/material.dart';
import 'package:widget_catalog/common/single_choice_page.dart';
import 'package:widget_catalog/common/widget_entry.dart';
import 'package:widget_catalog/layout/single_child/wrap_demo.dart';

class LayoutPage extends SingleChoicePage {
  final _items = [
    'Single-child',
    'Multi-child',
    'Sliver',
  ];

  LayoutPage()
      : super('Layout', [
          WidgetEntry(
            'SingleChild',
            SingleChoicePage('SingleChild', []),
          ),
          WidgetEntry(
            'MultiChild',
            SingleChoicePage('MultiChild', [
              WidgetEntry('Wrap', WrapDemo()),
            ]),
          ),
          WidgetEntry(
            'Sliver',
            SingleChoicePage('Silver', []),
          ),
        ]);
}
