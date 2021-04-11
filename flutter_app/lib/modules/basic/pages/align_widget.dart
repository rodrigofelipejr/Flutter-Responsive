import 'package:flutter/material.dart';

class AlignWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Align"),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.lightBlue,
            height: 200.0,
            width: MediaQuery.of(context).size.width,
            child: Align(
              alignment: Alignment.centerRight,
              child: Container(
                height: 50,
                width: 50,
                color: Colors.red,
              ),
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 50,
                width: 50,
                color: Colors.purple,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
