import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/square_widget.dart';

class PositionedWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Positioned"),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Positioned(
              top: 50,
              left: 25,
              height: 100,
              child: SquareWidget(color: Colors.red),
            ),
            Positioned(
              bottom: 50,
              right: 25,
              child: SquareWidget(color: Colors.purple),
            ),
          ],
        ),
      ),
    );
  }
}


