import 'package:flutter/material.dart';
import 'package:widget_catalog/common/widget_entry.dart';
import 'package:widget_catalog/material_components/information_displays/grid_view.dart';

import 'chip_demo.dart';

class InformationDisplaysPage extends StatelessWidget {
  List<WidgetEntry> entries = [
    WidgetEntry('Card', Container()),
    WidgetEntry('Chip', ChipDemo()),
    WidgetEntry('CircularProgressIndicator', Container()),
    WidgetEntry('DataTable', Container()),
    WidgetEntry('GridView', GridViewDemo()),
    WidgetEntry('Icon', Container()),
    WidgetEntry('Image', Container()),
    WidgetEntry('LinearProgressIndicator', Container()),
    WidgetEntry('Tooltip', Container()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Information Display Demo'),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          title: Text(entries[index].name),
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => entries[index].widget),
          ),
        ),
        separatorBuilder: (_, __) => const Divider(),
        itemCount: entries.length,
      ),
    );
  }
}
