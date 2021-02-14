import 'package:flutter/material.dart';
import 'package:widget_catalog/common/widget_entry.dart';

class ScrollingPage extends StatelessWidget {
  List<WidgetEntry> entries = [
    WidgetEntry('CustomScrollView', _CustomScrollViewDemo()),
    WidgetEntry('GridView', _GridViewDemo()),
    WidgetEntry('ListView', _ListViewDemo()),
    WidgetEntry('NestedScrollView', _NestedScrollViewDemo()),
    WidgetEntry('NotificationListener', _NotificationListenerDemo()),
    WidgetEntry('PageView', _PageViewDemo()),
    WidgetEntry('RefreshIndicator', _RefreshIndicatorDemo()),
    WidgetEntry('ScrollConfiguration', _ScrollConfigurationDemo()),
    WidgetEntry('Scrollable', _ScrollableDemo()),
    WidgetEntry('ScrollBar', _ScrollBarDemo()),
    WidgetEntry('SingleChildScrollView', _SingleChildScrollViewDemo()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scrolling Demo'),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => GestureDetector(
          child: Container(
            height: 50,
            child: Center(
              child: Text('${entries[index].name}'),
            ),
          ),
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => entries[index].widget,
              )),
        ),
        separatorBuilder: (context, index) => const Divider(),
        itemCount: entries.length,
      ),
    );
  }
}

class _CustomScrollViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          pinned: true,
          expandedHeight: 250.0,
          flexibleSpace: FlexibleSpaceBar(
            title: Text('CustomScrollView Demo'),
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.grid_view),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => _CustomScrollViewDemo1(),
                ),
              ),
            ),
          ],
        ),
        SliverGrid(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200.0,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
            childAspectRatio: 4.0,
          ),
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Container(
                alignment: Alignment.center,
                color: Colors.teal[100 * (index % 9)],
                child: Text('Grid Item $index'),
              );
            },
            childCount: 20,
          ),
        ),
        SliverFixedExtentList(
          itemExtent: 50.0,
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Container(
                alignment: Alignment.center,
                color: Colors.lightBlue[100 * (index % 9)],
                child: Text('List Item $index'),
              );
            },
          ),
        ),
      ],
    );
  }
}

class _CustomScrollViewDemo1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CustomScrollViewDemo1State();
  }
}

class _CustomScrollViewDemo1State extends State<_CustomScrollViewDemo1> {
  List<int> top = [];
  List<int> bottom = [0];

  @override
  Widget build(BuildContext context) {
    const Key centerKey = ValueKey('bottom-sliver-list');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Press on the plus to add items above and below'),
        leading: IconButton(
          icon: const Icon(Icons.add),
          onPressed: () {
            setState(() {
              top.add(-top.length - 1);
              bottom.add(bottom.length + 1);
            });
          },
        ),
      ),
      body: CustomScrollView(
        center: centerKey,
        slivers: <Widget>[
          SliverList(
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
              return Container(
                alignment: Alignment.center,
                color: Colors.blue[200 + top[index] % 4 * 100],
                height: 100 + top[index] % 4 * 20.0,
                child: Text('Item ${top[index]}'),
              );
            }),
          ),
          SliverList(
            key: centerKey,
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.blue[200 + bottom[index] % 4 * 100],
                  height: 100 + bottom[index] % 4 * 20.0,
                  child: Text('Item: ${bottom[index]}'),
                );
              },
              childCount: bottom.length,
            ),
          ),
        ],
      ),
    );
  }
}

class _GridViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class _ListViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class _NestedScrollViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class _NotificationListenerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class _PageViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class _RefreshIndicatorDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class _ScrollConfigurationDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class _ScrollableDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class _ScrollBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class _SingleChildScrollViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
