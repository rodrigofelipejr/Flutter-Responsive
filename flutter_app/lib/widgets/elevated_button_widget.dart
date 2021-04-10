import 'package:flutter/material.dart';

class ElevatedButtonWidget extends StatelessWidget {
  final String label;
  final Widget widget;

  const ElevatedButtonWidget({Key key, this.label, this.widget}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(label),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => widget),
        );
      },
    );
  }
}
