import 'package:flutter/material.dart';

class AnimatedListStateDemo extends StatefulWidget {
  @override
  _AnimatedListStateDemoState createState() => _AnimatedListStateDemoState();
}

class _AnimatedListStateDemoState extends State<AnimatedListStateDemo> {
  final key = GlobalKey<AnimatedListState>();
  static final List<String> _items = [
    'Julia',
    'Sam',
    'Anthony',
    'Julia',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text('Animated List'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: AnimatedList(
              key: key,
              initialItemCount: _items.length,
              itemBuilder: (context, index, animation) =>
                  buildItem(_items[index], index, animation),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => insertItem(0, _items.first),
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: Colors.pink[300],
      ),
    );
  }

  Widget buildItem(String item, int index, animation) => SlideTransition(
        position: Tween<Offset>(
          begin: const Offset(-1, 0),
          end: Offset.zero,
        ).animate(animation),
        child: _ListItemWidget(
          item,
          () => removeItem(index),
        ),
      );

  void insertItem(int index, String item) {
    _items.insert(index, item);
    key.currentState?.insertItem(index);
  }

  void removeItem(int index) {
    if (_items.length <= 1) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Text('I am the last one.'),
        ),
      );
      return;
    }
    final item = _items.removeAt(index);
    key.currentState?.removeItem(
      index,
      (context, animation) => buildItem(item, index, animation),
    );
  }
}

class _ListItemWidget extends StatelessWidget {
  final String name;
  final VoidCallback? onDelete;

  _ListItemWidget(this.name, this.onDelete);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.brown.shade800,
        child: Text(name.length >= 2 ? name.substring(0, 2) : name),
      ),
      title: Text(name),
      trailing: IconButton(
        icon: Icon(Icons.delete),
        onPressed: onDelete,
      ),
    );
  }
}
