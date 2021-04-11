import 'package:flutter/material.dart';

class ConstraintsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return Center(
    //   child: Container(
    //     color: Colors.green,
    //   ),
    // );

    // return Center(
    //   child: Container(
    //     color: Colors.green,
    //     height: 100.0,
    //     width: 100.0,
    //   ),
    // );

    // return Center(
    //   child: Container(
    //     color: Colors.green,
    //     child: Container(
    //       color: Colors.red,
    //       height: 100.0,
    //       width: 100.0,
    //     ),
    //   ),
    // );

    return Center(
      child: Container(
        color: Colors.green,
        padding: const EdgeInsets.all(20.0),
        child: Container(
          color: Colors.red,
          height: 100.0,
          width: 100.0,
        ),
      ),
    );
  }
}
