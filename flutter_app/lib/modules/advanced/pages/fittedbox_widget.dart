import 'package:flutter/material.dart';

class FittedBoxWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FittedBox(
        child: Text("Hello World, Hello World,"
            "Hello World, Hello World,"),
      ),
    );
  }
}
