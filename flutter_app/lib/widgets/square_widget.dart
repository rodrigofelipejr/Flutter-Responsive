import 'package:flutter/material.dart';

class SquareWidget extends StatelessWidget {
  final Color color;
  final double height;
  final double width;
  final Widget child;

  const SquareWidget({
    Key key,
    @required this.color,
    this.height = 75.0,
    this.width = 75.0,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: height,
      width: width,
      child: child != null ? child : SizedBox(),
    );
  }
}
