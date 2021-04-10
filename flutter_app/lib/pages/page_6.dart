import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/square_widget.dart';

class Page6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Align 2"),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Align(
              alignment: Alignment(-1, -1),
              child: SquareWidget(color: Colors.red),
            ),
            Align(
              alignment: Alignment(0, 0),
              child: SquareWidget(color: Colors.orange),
            ),
            Align(
              alignment: Alignment(0.75, 0.75),
              child: SquareWidget(color: Colors.purple),
            ),
          ],
        ),
      ),
    );
  }
}
