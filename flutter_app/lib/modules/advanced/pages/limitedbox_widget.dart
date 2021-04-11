import 'package:flutter/material.dart';

class LimitedBoxWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      child: LimitedBox(
        maxWidth: 100,
        child: Container(
          color: Colors.green,
          width: 4000,
          height: 50,
        ),
      ),
    );
  }
}
