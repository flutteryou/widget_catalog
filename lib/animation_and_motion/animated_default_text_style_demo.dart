import 'package:flutter/material.dart';

class AnimatedDefaultTextStyleDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => AnimatedDefaultTextStyleDemoState();
}

class AnimatedDefaultTextStyleDemoState
    extends State<AnimatedDefaultTextStyleDemo> {
  bool _first = false;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('AnimatedDefaultTextStyle'),
        ),
        body: Center(
          child: _buildBody(context),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.play_arrow_sharp),
          onPressed: () => setState(() => _first = !_first),
        ),
      );

  Widget _buildBody(BuildContext context) => AnimatedDefaultTextStyle(
        duration: const Duration(milliseconds: 300),
        style: TextStyle(
          fontSize: _first ? 90 : 60,
          color: _first ? Colors.blue : Colors.red,
          fontWeight: FontWeight.bold,
        ),
        child: Text('Flutter'),
      );
}
