import 'package:flutter/material.dart';

class TabBarDemo extends StatelessWidget {
  List<String> _tabs = [
    '静音',
    '半濁音',
    '濁音',
    '拗音',
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.help_sharp),
              tooltip: 'Show Snackbar',
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.settings_sharp),
              tooltip: 'Next page',
              onPressed: () {},
            ),
          ],
          title: TabBar(
            indicator: UnderlineTabIndicator(
              borderSide: BorderSide(
                width: 4,
                color: Color(0xFF646464),
              ),
              insets: EdgeInsets.only(
                left: 0,
                right: 8,
              ),
            ),
            isScrollable: true,
            labelPadding: EdgeInsets.only(left: 0, right: 0),
            tabs: _tabs
                .map((label) => Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: Tab(text: "$label"),
                    ))
                .toList(),
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Text(
                'This is Cake Tab',
                style: TextStyle(fontSize: 32),
              ),
            ),
            Center(
              child: Text(
                'This is Radio Tab',
                style: TextStyle(fontSize: 32),
              ),
            ),
            Center(
              child: Text(
                'This is Gift Tab',
                style: TextStyle(fontSize: 32),
              ),
            ),
            Center(
              child: Text(
                'This is youon Tab',
                style: TextStyle(fontSize: 32),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
