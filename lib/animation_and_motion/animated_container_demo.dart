import 'package:flutter/material.dart';

class AnimatedContainerDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => AnimatedContainerDemoState();
}

class AnimatedContainerDemoState extends State<AnimatedContainerDemo> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedContainer'),
      ),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return GestureDetector(
      onTap: () => setState(() => selected = !selected),
      child: Center(
        child: AnimatedContainer(
          width: selected ? 200.0 : 100.0,
          height: selected ? 100.0 : 200.0,
          color: selected ? Colors.red : Colors.blue,
          alignment:
              selected ? Alignment.center : AlignmentDirectional.topCenter,
          duration: Duration(seconds: 2),
          curve: Curves.fastOutSlowIn,
          child: FlutterLogo(size: 75),
        ),
      ),
    );
  }
}
