import 'package:flutter/material.dart';
import 'package:widget_catalog/AssetsImagesAndIconsPage.dart';
import 'package:widget_catalog/accessibility_page.dart';
import 'package:widget_catalog/animation_and_motion_page.dart';
import 'package:widget_catalog/async_page.dart';
import 'package:widget_catalog/basics_page.dart';
import 'package:widget_catalog/cupertino_page.dart';
import 'package:widget_catalog/input_page.dart';
import 'package:widget_catalog/interaction_models_page.dart';
import 'package:widget_catalog/layout_page.dart';
import 'package:widget_catalog/material_components_page.dart';
import 'package:widget_catalog/painting_and_effects_page.dart';
import 'package:widget_catalog/scrolling_page.dart';
import 'package:widget_catalog/styling_page.dart';
import 'package:widget_catalog/text_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class _PageEntry {
  _PageEntry({
    this.name,
    this.widget,
  })  : assert(name != null, 'name cannot be empty'),
        assert(widget != null, 'widget cannot be empty');
  final String name;
  final Widget widget;
}

class MyHomePage extends StatelessWidget {
  final List<_PageEntry> entries = [
    _PageEntry(name: 'Accessibility', widget: AccessibilityPage()),
    _PageEntry(name: 'Animation and Motion', widget: AnimationAndMotionPage()),
    _PageEntry(
        name: 'Assets, Images, and Icons', widget: AssetsImagesAndIconsPage()),
    _PageEntry(name: 'Async', widget: AsyncPage()),
    _PageEntry(name: 'Basics', widget: BasicsPage()),
    _PageEntry(name: 'Cupertino (iOS-style widgets)', widget: CupertinoPage()),
    _PageEntry(name: 'Input', widget: InputPage()),
    _PageEntry(name: 'Interaction Models', widget: InteractionModelsPage()),
    _PageEntry(name: 'Layout', widget: LayoutPage()),
    _PageEntry(name: 'Material Components', widget: MaterialComponentsPage()),
    _PageEntry(name: 'Panting and effects', widget: PaintingAndEffectsPage()),
    _PageEntry(name: 'Scrolling', widget: ScrollingPage()),
    _PageEntry(name: 'Styling', widget: StylingPage()),
    _PageEntry(name: 'Text', widget: TextPage()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Widget Catalog'),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(8),
        itemCount: entries.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
              child: Container(
                height: 50,
                child: Center(
                  child: Text(
                    '${entries[index].name}',
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => entries[index].widget),
                );
              });
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
    );
  }
}
