import 'package:flutter/material.dart';

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Column'),
      ),
      body: Row(
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // mainAxisSize: MainAxisSize.min,
        children: [
          // Text('Flutter'),
          // Text('Welcome in flutter.'),
          // Text('We are in Mohammed Flutter - ALAQSA'),
          Container(
            color: Colors.orange,
            height: 120,
            // width: double.infinity,
            alignment: Alignment.center,
            child: Text('This is a container'),
          ),
          Container(
            color: Colors.pink,
            height: 120,
            // width: double.infinity,
            alignment: Alignment.center,
            child: Text('This is a container (1)'),
          ),
          Container(
            color: Colors.green,
            height: 120,
            // width: double.infinity,
            alignment: Alignment.center,
            child: Text('This is a container (3)'),
          ),
        ],
      ),
    );
  }
}
// Column
/**
 *Column(
    // crossAxisAlignment: CrossAxisAlignment.stretch,
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    // mainAxisSize: MainAxisSize.min,
    children: [
    // Text('Flutter'),
    // Text('Welcome in flutter.'),
    // Text('We are in Mohammed Flutter - ALAQSA'),
    Container(
    color: Colors.orange,
    height: 120,
    // width: double.infinity,
    alignment: Alignment.center,
    child: Text('This is a container'),
    ),
    Container(
    color: Colors.pink,
    height: 120,
    // width: double.infinity,
    alignment: Alignment.center,
    child: Text('This is a container (1)'),
    ),
    Container(
    color: Colors.green,
    height: 120,
    // width: double.infinity,
    alignment: Alignment.center,
    child: Text('This is a container (3)'),
    ),
    ],
    ),
 */
