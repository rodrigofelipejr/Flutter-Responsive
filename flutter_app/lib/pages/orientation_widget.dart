import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/square_widget.dart';

class OrientationWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Outra alternativa
    // final Orientation orientation = MediaQuery.of(context).orientation;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Orientation"),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return orientation == Orientation.portrait
              ? SquareWidget(
                  color: Colors.purple,
                  child: Center(child: Text("P")),
                )
              : SquareWidget(
                  color: Colors.orange,
                  child: Center(child: Text("L")),
                );
        },
      ),
    );
  }
}
