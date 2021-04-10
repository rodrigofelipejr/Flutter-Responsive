import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/square_widget.dart';

class Page11 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("ListView"),
      ),
      body: GridView.count(
        crossAxisCount: MediaQuery.of(context).orientation == Orientation.portrait ? 2 : 4,
        children: _buildWidgets(),
      ),
    );
  }

  List<Widget> _buildWidgets() {
    return [
      SquareWidget(color: Colors.blue, height: 100.0, width: 50.0),
      SquareWidget(color: Colors.red, height: 100.0, width: 50.0),
      SquareWidget(color: Colors.green, height: 100.0, width: 50.0),
      SquareWidget(color: Colors.purple, height: 100.0, width: 50.0),
      SquareWidget(color: Colors.yellow, height: 100.0, width: 50.0),
    ];
  }
}
