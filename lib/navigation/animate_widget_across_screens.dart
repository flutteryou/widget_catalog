import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Screen'),
      ),
      body: GestureDetector(
        child: Hero(
          tag: 'imageHero',
          child: Image.network(
            'https://5b0988e595225.cdn.sohucs.com/images/20190906/296099ec2870445dbceba3c761c6d2bc.jpeg',
          ),
        ),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) {
            return _DetailScreen();
          }));
        },
      ),
    );
  }
}

class _DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        child: Center(
          child: Hero(
            tag: 'imageHero',
             child: Image.network(
               'https://5b0988e595225.cdn.sohucs.com/images/20190906/1d4781db9b5d4f81b335cb46c23c5bc4.jpeg',
             ),
          ),
        ),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}