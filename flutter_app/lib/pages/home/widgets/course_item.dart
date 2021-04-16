import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/breakpoint.dart';

class CourseItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        print(constraints.maxHeight);
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            AspectRatio(
              aspectRatio: 16 / 9,
              child: Image.asset(
                "assets/images/image-2.jpg",
                fit: BoxFit.fitWidth,
              ),
            ),
            SizedBox(height: 8.0),
            Flexible(
              child: AutoSizeText(
                "Criação de Apps Android e iOS com Flutter - Crie 16 Apps",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14.0,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 4.0),
            AutoSizeText(
              "Daniel Ciolfi",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 13.0,
              ),
              minFontSize: 12.0,
            ),
            SizedBox(height: 4.0),
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
      },
    );
  }
}
