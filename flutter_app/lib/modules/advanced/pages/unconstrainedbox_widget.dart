import 'package:flutter/material.dart';

class UnconstrainedBoxWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      child: Container(
        color: Colors.green,
        width: 4000,
        height: 50,
      ),
    );
  }
}
