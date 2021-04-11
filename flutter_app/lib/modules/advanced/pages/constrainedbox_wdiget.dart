import 'package:flutter/material.dart';

class ConstrainedBoxWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minWidth: 70,
          minHeight: 70,
          maxWidth: 150,
          maxHeight: 150,
        ),
        child: Container(
          color: Colors.green,
          width: 10,
          height: 10,
        ),
      ),
    );
  }
}
