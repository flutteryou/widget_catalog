import 'package:flutter/material.dart';
import 'package:widget_catalog/persistence/shared_preferences.dart';

class PersistencePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Persistence Demo')),
      body: ListView(
        children: [
          ListTile(
            title: Text('Shared Preferences'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => SharedPreferencesDemo(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
