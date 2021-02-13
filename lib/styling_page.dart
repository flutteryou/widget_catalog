import 'package:flutter/material.dart';

class StylingPage extends StatelessWidget {
  List<String> entries = [
    'MediaQuery',
    'Padding',
    'Theme',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Styling Demo'),
      ),
      body: ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              switch (entries[index]) {
                case 'MediaQuery':
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => _MediaQueryDemo()));
                  break;
                case 'Padding':
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => _PaddingDemo()));
                  break;
                case 'Theme':
                  break;
              }
            },
            child: Container(
              height: 50,
              child: Center(
                child: Text(entries[index]),
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) => Divider(),
        itemCount: entries.length,
      ),
    );
  }
}

class _PaddingDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Padding Demo')),
      body: Center(
        child: Card(
          color: Colors.blueGrey,
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Text('Hello World'),
          ),
        ),
      ),
    );
  }
}

class _MediaQueryDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MediaQuery Demo'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('accessibleNavigation'),
            subtitle:
                Text(MediaQuery.of(context).accessibleNavigation.toString()),
          ),
          ListTile(
            title: Text('alwaysUse24HourFormat'),
            subtitle:
                Text(MediaQuery.of(context).alwaysUse24HourFormat.toString()),
          ),
          ListTile(
            title: Text('boldText'),
            subtitle: Text(MediaQuery.of(context).boldText.toString()),
          ),
          ListTile(
            title: Text('devicePixelRatio'),
            subtitle: Text(MediaQuery.of(context).devicePixelRatio.toString()),
          ),
          ListTile(
            title: Text('disableAnimations'),
            subtitle: Text(MediaQuery.of(context).disableAnimations.toString()),
          ),
          ListTile(
            title: Text('highContrast'),
            subtitle: Text(MediaQuery.of(context).highContrast.toString()),
          ),
          ListTile(
            title: Text('invertColors'),
            subtitle: Text(MediaQuery.of(context).invertColors.toString()),
          ),
          ListTile(
            title: Text('navigationMode'),
            subtitle: Text(MediaQuery.of(context).navigationMode.toString()),
          ),
          ListTile(
            title: Text('orientation'),
            subtitle: Text(MediaQuery.of(context).orientation.toString()),
          ),
          ListTile(
            title: Text('padding'),
            subtitle: Text(MediaQuery.of(context).padding.toString()),
          ),
          ListTile(
            title: Text('platformBrightness'),
            subtitle:
                Text(MediaQuery.of(context).platformBrightness.toString()),
          ),
          ListTile(
            title: Text('size'),
            subtitle: Text(MediaQuery.of(context).size.toString()),
          ),
          ListTile(
            title: Text('systemGestureInsets'),
            subtitle:
                Text(MediaQuery.of(context).systemGestureInsets.toString()),
          ),
          ListTile(
            title: Text('textScaleFactor'),
            subtitle: Text(MediaQuery.of(context).textScaleFactor.toString()),
          ),
          ListTile(
            title: Text('viewInsets'),
            subtitle: Text(MediaQuery.of(context).viewInsets.toString()),
          ),
          ListTile(
            title: Text('viewPadding'),
            subtitle: Text(MediaQuery.of(context).viewPadding.toString()),
          ),
          ListTile(
            title: Text('runtimeType'),
            subtitle: Text(MediaQuery.of(context).runtimeType.toString()),
          ),
        ],
      ),
    );
  }
}
