import 'package:flutter/material.dart';
import 'package:widget_catalog/common/widget_entry.dart';

class SingleChoicePage extends StatelessWidget {
  List<WidgetEntry> widgetEntries;
  String pageTitle;

  SingleChoicePage(this.pageTitle, this.widgetEntries);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pageTitle),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          title: Text(widgetEntries[index].name),
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => widgetEntries[index].widget,
            ),
          ),
        ),
        separatorBuilder: (context, index) => const Divider(),
        itemCount: widgetEntries.length,
      ),
    );
  }
}
