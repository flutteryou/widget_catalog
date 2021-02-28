import 'package:flutter/material.dart';

class AnimatedCrossFadeDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => AnimatedCrossFadeDemoState();
}

class AnimatedCrossFadeDemoState extends State<AnimatedCrossFadeDemo> {
  bool _first = true;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('AnimatedCrossFade'),
        ),
        body: Center(
          child: _buildBody(context),
        ),
        floatingActionButton: FloatingActionButton(
          child: Text(_first ? '1' : '2'),
          onPressed: () => setState(() => _first = !_first),
        ),
      );

  Widget _buildBody(BuildContext context) => AnimatedCrossFade(
        crossFadeState:
            _first ? CrossFadeState.showFirst : CrossFadeState.showSecond,
        firstChild: const FlutterLogo(
          style: FlutterLogoStyle.horizontal,
          size: 200.0,
        ),
        secondChild: const FlutterLogo(
          style: FlutterLogoStyle.stacked,
          size: 200.0,
        ),
        duration: const Duration(seconds: 3),
      );
}
