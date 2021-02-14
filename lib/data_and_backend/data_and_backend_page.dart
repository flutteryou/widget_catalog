import 'package:flutter/material.dart';
import 'package:widget_catalog/common/widget_entry.dart';
import 'package:widget_catalog/data_and_backend/json_and_serialization.dart';

class DataAndBackendPage extends StatelessWidget {
  List<WidgetEntry> entries = [
    WidgetEntry('JSON and serialization', JsonAndSerializationDemo()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data & Backend'),
      ),
      body: ListView.separated(
        itemBuilder: (_, index) => ListTile(
          title: Text(entries[index].name),
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (_) => entries[index].widget
              )
          ),
        ),
        separatorBuilder: (_, __) => const Divider(),
        itemCount: entries.length,
      ),
    );
  }
}
