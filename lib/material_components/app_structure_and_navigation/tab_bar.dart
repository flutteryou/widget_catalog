import 'package:flutter/material.dart';

class TabBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey.shade500,
          title: Text('五十音'),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.add_alert),
              tooltip: 'Show Snackbar',
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.navigate_next),
              tooltip: 'Next page',
              onPressed: () {},
            ),
          ],
          bottom: TabBar(
            indicatorColor: Colors.lime,
            indicatorWeight: 5.0,
            labelColor: Colors.white,
            labelPadding: EdgeInsets.only(top: 10.0),
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(
                text: '清音',
                // icon: Icon(
                //   Icons.cake,
                //   color: Colors.white,
                // ),
                // iconMargin: EdgeInsets.only(bottom: 10.0),
              ),
              //child: Image.asset('images/android.png'),

              Tab(
                text: '半浊音',
                // icon: Icon(
                //   Icons.radio,
                //   color: Colors.white,
                // ),
                // iconMargin: EdgeInsets.only(bottom: 10.0),
              ),
              Tab(
                text: '浊音',
                // icon: Icon(
                //   Icons.card_giftcard,
                //   color: Colors.white,
                // ),
                // iconMargin: EdgeInsets.only(bottom: 10.0),
              ),
              Tab(
                text: '拗音',
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Text(
                'This is Cake Tab',
                style: TextStyle(fontSize: 32),
              ),
            ),
            Center(
              child: Text(
                'This is Radio Tab',
                style: TextStyle(fontSize: 32),
              ),
            ),
            Center(
              child: Text(
                'This is Gift Tab',
                style: TextStyle(fontSize: 32),
              ),
            ),
            Center(
              child: Text(
                'This is youon Tab',
                style: TextStyle(fontSize: 32),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
