import 'package:flutter/material.dart';

class TextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Demo'),
      ),
      body: Column(
        children: [
          Text('Text'),
          Text(
            'Hello! How are you?',
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text('Text.rich'),
          const Text.rich(
            TextSpan(
              text: 'Hello', // default text style
              children: <TextSpan>[
                TextSpan(
                    text: ' beautiful ',
                    style: TextStyle(fontStyle: FontStyle.italic)),
                TextSpan(
                    text: 'world',
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          Text('RichText'),
          RichText(
            text: TextSpan(
              text: 'Hello ',
              style: DefaultTextStyle.of(context).style,
              children: <TextSpan>[
                TextSpan(
                  text: 'bold',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: ' world!',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
