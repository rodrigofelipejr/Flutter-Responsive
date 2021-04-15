import 'package:flutter/material.dart';

class CourseItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 4.0),
          child: Image.asset(
            "assets/images/image-2.jpg",
            fit: BoxFit.fitWidth,
          ),
        ),
        Text(
          "Criação de Apps Android e iOS com Flutter - Crie 16 Apps",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
            color: Colors.white,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 6.0),
          child: Text(
            "Daniel Ciolfi",
            style: TextStyle(color: Colors.grey),
          ),
        ),
        Text(
          "R\$ 22,90",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14.0,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
