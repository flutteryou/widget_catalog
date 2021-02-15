import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SharedPreferencesDemoState();
  }
}

class _SharedPreferencesDemoState extends State<SharedPreferencesDemo> {
  int _counter = 0;

  @override
  void initState() {
    super.initState();
    _loadCounter();
  }

  // Loading counter value on start
  void _loadCounter() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    setState(() {
      _counter = pref.getInt('counter') ?? 0;
    });
  }

  void _incrementCounter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _counter = (prefs.getInt('counter') ?? 0) + 1;
      prefs.setInt('counter', _counter);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shared Preferences Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}