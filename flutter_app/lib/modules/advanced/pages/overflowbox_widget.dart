import 'package:flutter/material.dart';

class OverflowBoxWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OverflowBox(
      minWidth: 0.0,
      minHeight: 0.0,
      maxHeight: double.infinity,
      maxWidth: double.infinity,
      child: Container(
        color: Colors.green,
        width: 4000,
        height: 50,
      ),
    );
  }
}
