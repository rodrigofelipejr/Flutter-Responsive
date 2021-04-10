import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/square_widget.dart';

class Page10 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("ListView"),
      ),
      // body: ListView(
      //   children: _buildWidgets(),
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: _buildWidgets(),
        ),
      ),
    );
  }

  List<Widget> _buildWidgets() {
    return [
      SquareWidget(color: Colors.blue, height: 200.0, width: 100.0),
      SquareWidget(color: Colors.red, height: 200.0, width: 100.0),
      SquareWidget(color: Colors.green, height: 200.0, width: 100.0),
      SquareWidget(color: Colors.purple, height: 200.0, width: 100.0),
      SquareWidget(color: Colors.yellow, height: 200.0, width: 100.0),
    ];
  }
}
