import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/square_widget.dart';

class Page4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Wrap"),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: Colors.lightBlueAccent,
        child: Wrap(
          alignment: WrapAlignment.center,
          spacing: 50,
          runSpacing: 20,
          children: [
            SquareWidget(color: Colors.red),
            SquareWidget(color: Colors.purple),
            SquareWidget(color: Colors.green),
            SquareWidget(color: Colors.orange),
          ],
        ),
      ),
    );
  }
}
 
