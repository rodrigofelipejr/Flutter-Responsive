import 'package:flutter/material.dart';

class MediaQueryWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("MediaQuery"),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height * 0.5,
        width: MediaQuery.of(context).size.width * 0.5,
        color: Colors.blue,
        child: Center(
          child: Text(
            "Height: 50% - Width: 50%",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
