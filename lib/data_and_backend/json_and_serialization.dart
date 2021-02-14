import 'dart:convert';

import 'package:flutter/material.dart';

import 'gojuon.dart';

class JsonAndSerializationDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return JsonAndSerializationDemoState();
  }
}

class JsonAndSerializationDemoState extends State<JsonAndSerializationDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Json & Serialization Demo'),
      ),
      body: FutureBuilder<Gojuon>(
        future: fetchGojuon(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Text('Loading');
          }
          return Text('Loading Complete: ${snapshot.data?.a[0].h}');
        },
      ),
    );
  }

  Future<Gojuon> fetchGojuon() async {
    String data = await DefaultAssetBundle.of(context).loadString(
        "assets/kanas.json");
    return Gojuon.fromJson(jsonDecode(data));
  }
}
