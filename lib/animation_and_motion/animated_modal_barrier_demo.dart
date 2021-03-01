import 'package:flutter/material.dart';

class AnimatedModalBarrierDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('AnimatedModalBarrier'),
        ),
        body: Stack(
          children: [
            Center(
              child: Container(
                child: TextButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Hello'),
                      ),
                    );
                  },
                  child: Text('Click me'),
                ),
              ),
            ),
            new Opacity(
              opacity: 0.3,
              // child: AnimatedModalBarrier(
              //   color: ColorTween(begin: Colors.yellow, end: Colors.red).animate(),
              // ),
            ),
          ],
        ),
      );
}
