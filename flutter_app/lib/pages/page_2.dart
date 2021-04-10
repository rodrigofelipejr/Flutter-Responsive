import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Expanded"),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.pink,
              child: Center(
                child: Text("2", style: TextStyle(color: Colors.white, fontSize: 32.0)),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.blue,
              child: Center(
                child: Text("3", style: TextStyle(color: Colors.white, fontSize: 32.0)),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.green,
              child: Center(
                child: Text("1", style: TextStyle(color: Colors.white, fontSize: 32.0)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
