import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/square_widget.dart';

class Page9 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("FittedBox"),
      ),
      body: Center(
        child: FittedBox(
          fit: BoxFit.contain,
          child: Row(
            children: [
              SquareWidget(
                color: Colors.blue,
                height: 100.0,
                width: 100.0,
              ),
              Image.asset(
                "assets/images/nature.jpg",
                height: 300,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
