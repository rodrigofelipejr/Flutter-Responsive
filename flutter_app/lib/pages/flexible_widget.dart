import 'package:flutter/material.dart';

class FlexibleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Flexible"),
      ),
      body: Column(
        children: [
          Flexible(
            flex: 3,
            // fit: FlexFit.tight,
            fit: FlexFit.loose,
            child: Container(
              height: 250.0,
              color: Colors.orange,
            ),
          ),
          Flexible(
            flex: 1,
            child: Container(
              color: Colors.purple,
            ),
          ),
          Flexible(
            flex: 1,
            child: Container(
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
