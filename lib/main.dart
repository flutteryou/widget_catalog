import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:widget_catalog/assets_images_and_icons_page.dart';
import 'package:widget_catalog/accessibility_page.dart';
import 'package:widget_catalog/animation_and_motion_page.dart';
import 'package:widget_catalog/async_page.dart';
import 'package:widget_catalog/basics_page.dart';
import 'package:widget_catalog/cupertino_page.dart';
import 'package:widget_catalog/data_and_backend/data_and_backend_page.dart';
import 'package:widget_catalog/input_page.dart';
import 'package:widget_catalog/interaction_models_page.dart';
import 'package:widget_catalog/layout_page.dart';
import 'package:widget_catalog/material_components/material_components_page.dart';
import 'package:widget_catalog/painting_and_effects_page.dart';
import 'package:widget_catalog/scrolling_page.dart';
import 'package:widget_catalog/styling_page.dart';
import 'package:widget_catalog/text_page.dart';
import 'package:widget_catalog/common/widget_entry.dart';

void main() {
  // debugPaintSizeEnabled = true;
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

class MyHomePage extends StatelessWidget {
  final List<WidgetEntry> entries = [
    WidgetEntry('Accessibility', AccessibilityPage()),
    WidgetEntry('Animation and Motion', AnimationAndMotionPage()),
    WidgetEntry('Assets, Images, and Icons',  AssetsImagesAndIconsPage()),
    WidgetEntry('Async', AsyncPage()),
    WidgetEntry('Basics', BasicsPage()),
    WidgetEntry('Cupertino (iOS-style widgets)', CupertinoPage()),
    WidgetEntry('Input', InputPage()),
    WidgetEntry('Interaction Models', InteractionModelsPage()),
    WidgetEntry('Layout', LayoutPage()),
    WidgetEntry('Material Components', MaterialComponentsPage()),
    WidgetEntry('Panting and effects', PaintingAndEffectsPage()),
    WidgetEntry('Scrolling', ScrollingPage()),
    WidgetEntry('Styling', StylingPage()),
    WidgetEntry('Text', TextPage()),
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
          return ListTile(
            title: Text(entries[index].name),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => entries[index].widget),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text("Let's Flutter"),
              decoration: BoxDecoration(color: Colors.blue),
            ),
            ListTile(
              title: Text('User Interface'),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              title: Text('Data & backend'),
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => DataAndBackendPage(),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
