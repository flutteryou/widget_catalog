import 'package:flutter/material.dart';

class GridViewDemo extends StatelessWidget {
  static const TextStyle textStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 24,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView Demo'),
      ),
      body: GridView.count(
        crossAxisCount: 5,
        primary: false,
        padding: const EdgeInsets.all(8),
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(8),
            child: const Center(
              child: Text(
                "あ",
                style: textStyle,
              ),
            ),
            color: Colors.teal[100],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: Center(
              child: const Text(
                'い',
                style: textStyle,
              ),
            ),
            color: Colors.teal[200],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Sound of screams but the'),
            color: Colors.teal[300],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Who scream'),
            color: Colors.teal[400],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Revolution is coming...'),
            color: Colors.teal[500],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Revolution, they...'),
            color: Colors.teal[600],
          ),
        ],
      ),
    );
  }
}
