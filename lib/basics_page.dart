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
      case 'Row':
        widget = _RowDemo();
        break;
      case 'Column':
        widget = _ColumnDemo();
        break;
      case 'Container':
        widget = _ContainerDemo();
        break;
      case 'Icon':
        widget = _IconDemo();
        break;
      case 'Text':
        widget = _TextDemo();
        break;
      case 'Image':
        widget = _ImageDemo();
        break;
      case 'PlaceHolder':
        widget = _PlaceHolder();
        break;
      case 'Scaffold':
        widget = _ScaffoldDemo1();
        break;
      case 'RaisedButton':
        widget = _RaiseButtonDemo();
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

class _RowDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Row Demo'),
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: Text('Deliver features faster',
                    textAlign: TextAlign.center),
              ),
              Expanded(
                child: Text('Craft beautiful UIs', textAlign: TextAlign.center),
              ),
              Expanded(
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: const FlutterLogo(),
                ),
              ),
            ],
          ),
          Row(
            textDirection: TextDirection.rtl,
            children: [
              const FlutterLogo(),
              const Expanded(
                child: Text(
                    "Flutter's hot reload helps you quickly and easily experiment, build UIs, add features, and fix bug faster. Experience sub-second reload times, without losing state, on emulators, simulators, and hardware for iOS and Android."),
              ),
              const Icon(Icons.sentiment_very_satisfied),
            ],
          ),
        ],
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

class _IconDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Icon Demo'),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const <Widget>[
            Icon(
              Icons.favorite,
              color: Colors.pink,
              size: 24.0,
              semanticLabel: 'Text to announce in accessibility modes',
            ),
            Icon(
              Icons.audiotrack,
              color: Colors.green,
              size: 30.0,
            ),
            Icon(
              Icons.beach_access,
              color: Colors.blue,
              size: 36.0,
            ),
          ],
        ));
  }
}

class _TextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Demo'),
      ),
      body: ListView(
        children: const <Widget>[
          Text(
            'Hello, how are you',
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text.rich(TextSpan(text: 'Hello', children: <TextSpan>[
            TextSpan(
              text: ' beautiful ',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
            TextSpan(
              text: 'world',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ])),
        ],
      ),
    );
  }
}

class _ImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Image Demo'),
        ),
        body: Column(
          children: <Widget>[
            Image.network(
                'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
            const Image(
              image: NetworkImage(
                  'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
            )
          ],
        ));
  }
}

class _PlaceHolder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PlaceHolder demo'),
      ),
      body: Placeholder(
        fallbackHeight: 50.0,
        fallbackWidth: 100.0,
      ),
    );
  }
}

class _ScaffoldDemo1 extends StatefulWidget {
  _ScaffoldDemo1({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _ScaffoldDemo1State();
  }
}

class _ScaffoldDemo1State extends State<_ScaffoldDemo1> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scaffold Demo 1'),
        actions: <Widget>[
          PopupMenuButton<String>(
            onSelected: (value) {
              switch (value) {
                case 'Demo2':
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => _ScaffoldDemo2()));
                  break;
                case 'Demo3':
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => _ScaffoldDemo3()));
                  break;
              }
            },
            itemBuilder: (BuildContext context) {
              return {'Demo2', 'Demo3'}.map((String choice) {
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(choice),
                );
              }).toList();
            },
          ),
        ],
      ),
      body: Center(
        child: Text('You have pressed the button $_count times.'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() => _count++),
        tooltip: 'Increment Counter',
        child: const Icon(Icons.add),
      ),
    );
  }
}

class _ScaffoldDemo2 extends StatefulWidget {
  _ScaffoldDemo2({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _ScaffoldDemo2State();
  }
}

class _ScaffoldDemo2State extends State<_ScaffoldDemo2> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scaffold Demo 2'),
      ),
      body: Center(
        child: Text('You have pressed the button $_count times.'),
      ),
      backgroundColor: Colors.blueGrey.shade200,
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() => _count++),
        tooltip: 'Increment Counter',
        child: const Icon(Icons.add),
      ),
    );
  }
}

class _ScaffoldDemo3 extends StatefulWidget {
  _ScaffoldDemo3({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _ScaffoldDemo3State();
  }
}

class _ScaffoldDemo3State extends State<_ScaffoldDemo3> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scaffold Demo 3'),
      ),
      body: Center(
        child: Text('You have pressed the button $_count times.'),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(
          height: 50.0,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() => _count++),
        tooltip: 'Increment Counter',
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class _RaiseButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Raised Button Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const RaisedButton(
              onPressed: null,
              child: Text(
                'Disabled Button',
                style: TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            RaisedButton(
              onPressed: () {},
              child: const Text(
                'Enabled Button',
                style: TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            RaisedButton(
              onPressed: () {},
              textColor: Colors.white,
              padding: const EdgeInsets.all(0.0),
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[
                      Color(0xFF0D47A1),
                      Color(0xFF1976D2),
                      Color(0xFF42A5F5),
                    ],
                  ),
                ),
                padding: const EdgeInsets.all(10.0),
                child: const Text(
                  'Gradient Button',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
