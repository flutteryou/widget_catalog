import 'package:flutter/material.dart';
import 'package:widget_catalog/basics_page.dart';
import 'package:widget_catalog/common/widget_entry.dart';
import 'package:widget_catalog/material_components/app_structure_and_navigation/drawer.dart';
import 'package:widget_catalog/material_components/app_structure_and_navigation/tab_bar.dart';
import 'package:widget_catalog/material_components/information_displays/grid_view.dart';
import 'package:widget_catalog/material_components/information_displays/information_displays.dart';

import 'app_structure_and_navigation/bottom_navigation_bar.dart';

class MaterialComponentsPage extends StatelessWidget {
  List<WidgetEntry> entries = [
    WidgetEntry(
        "App structure and navigation", _AppStructureAndNavigationDemo()),
    WidgetEntry("Buttons", _ButtonsDemo()),
    WidgetEntry("Input and selections", _InputAndSelectionsDemo()),
    WidgetEntry("Dialogs, alerts, and panels", _DialogsAlertsAndPanelsDemo()),
    WidgetEntry("Information displays", InformationDisplaysPage()),
    WidgetEntry("Layout", _LayoutDemo()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material Components Page'),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => GestureDetector(
          child: Container(
            height: 50.0,
            child: Center(
              child: Text('${entries[index].name}'),
            ),
          ),
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => entries[index].widget),
          ),
        ),
        separatorBuilder: (context, index) => const Divider(),
        itemCount: entries.length,
      ),
    );
  }
}

class _AppStructureAndNavigationDemo extends StatelessWidget {
  List<WidgetEntry> entries = [
    WidgetEntry('AppBar', AppBarDemo()),
    WidgetEntry('BottomNavigationBar', BottomNavigationBarDemo()),
    WidgetEntry('Drawer', DrawerDemo()),
    WidgetEntry("TabBar", TabBarDemo()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AppBar'),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => GestureDetector(
          child: Container(
            height: 50,
            child: Center(
              child: Text('${entries[index].name}'),
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => entries[index].widget),
            );
          },
        ),
        separatorBuilder: (context, index) => const Divider(),
        itemCount: entries.length,
      ),
    );
  }
}

class _ButtonsDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class _InputAndSelectionsDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class _DialogsAlertsAndPanelsDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class _LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
