import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BasicsPage extends StatelessWidget {
  final List<String> entries = [
    'AppBar',
    'Column',
    'Container',
    'FlutterLogo',
    'Icon',
    'Image',
    'PlaceHolder',
    'RaisedButton',
    'Row',
    'Scaffold',
    'Text',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Basics'),
      ),
      body: ListView.separated(
        padding: EdgeInsets.all(8),
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            child: Container(
                height: 50,
                child: Center(
                  child: Text('${entries[index]}'),
                )),
            onTap: () {
              _handleTap(context, entries[index]);
            },
          );
        },
        separatorBuilder: (BuildContext context, int index) => Divider(),
        itemCount: entries.length,
      ),
    );
  }

  void _handleTap(BuildContext context, String value) {
    Widget widget = this;
    switch (value) {
      case 'AppBar':
        widget = _AppBarDemo();
        break;
      case 'Column':
        widget = _ColumnDemo();
        break;
      case 'Container':
        widget = _ContainerDemo();
        break;
    }

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => widget),
    );
  }
}

class _AppBarDemo extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final SnackBar snackBar = const SnackBar(content: Text('Showing Snackbar'));

  void openPage(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
      return Scaffold(
          appBar: AppBar(
            title: const Text('Next page'),
          ),
          body: const Center(
              child: Text(
            'This is the next page',
            style: TextStyle(fontSize: 24),
          )));
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(title: const Text('AppBar Demo'), actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.add_alert),
          tooltip: 'Show Snackbar',
          onPressed: () {
            scaffoldKey.currentState.showSnackBar(snackBar);
          },
        ),
        IconButton(
            icon: const Icon(Icons.navigate_next),
            tooltip: 'Next page',
            onPressed: () {
              openPage(context);
            }),
      ]),
      body: const Center(
        child: Text(
          'This is the home page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

class _ColumnDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ColumnDemoState();
  }
}

class _ColumnDemoState extends State<_ColumnDemo> {
  Column _column = Column(
    children: <Widget>[
      Text('Deliver features faster'),
      Text('Craft beautiful UIs'),
      Expanded(
        child: FittedBox(
          fit: BoxFit.contain,
          child: const FlutterLogo(),
        ),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Column Demo'), actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.grid_view),
          onPressed: () {
            this.setState(() {
              _column = _buildColumn(context);
            });
          },
        )
      ]),
      body: _column,
    );
  }

  Column _buildColumn(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text('We move under cover and we move as one'),
        Text('Through the night, we have one shot to live another day'),
        Text('We cannot let a stray gunshot give us away'),
        Text('We will fight up close, seize the moment and stay in it'),
        Text('It’s either that or meet the business end of a bayonet'),
        Text('The code word is ‘Rochambeau,’ dig me?'),
        Text('Rochambeau!',
            style:
                DefaultTextStyle.of(context).style.apply(fontSizeFactor: 2.0)),
      ],
    );
  }
}

class _ContainerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container Demo'),
      ),
      body: ListView(
        children: <Widget>[
          Center(
            child: Container(
              margin: const EdgeInsets.all(10.0),
              color: Colors.amber[600],
              width: 48.0,
              height: 48.0,
            ),
          ),
          Container(
            constraints: BoxConstraints.expand(
              height:
                  Theme.of(context).textTheme.headline4.fontSize * 1.1 + 200.0,
            ),
            padding: EdgeInsets.all(8.0),
            color: Colors.amber[600],
            alignment: Alignment.center,
            child: Text(
              'Hello World',
              style: Theme.of(context)
                  .textTheme
                  .headline4
                  .copyWith(color: Colors.white),
            ),
            transform: Matrix4.rotationZ(0.1),
          ),
        ],
      ),
    );
  }
}
