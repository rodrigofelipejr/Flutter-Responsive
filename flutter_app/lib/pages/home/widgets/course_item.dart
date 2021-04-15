import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class CourseItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
        // Flexible(
        //   child: LayoutBuilder(
        //     builder: (context, constraints) {
        //       return AutoSizeText(
        //         "Criação de Apps Android e iOS com Flutter - Crie 16 Apps",
        //         minFontSize: 8.0,
        //         style: TextStyle(
        //           fontWeight: FontWeight.bold,
        //           fontSize: 16.0,
        //           color: Colors.white,
        //         ),
        //       );
        //     },
        //   ),
        // ),
        //  Flexible(
        Flexible(
          child: LayoutBuilder(
            builder: (context, constraints) {
              return AutoSizeText(
                "Criação de Apps Android e iOS com Flutter - Crie 16 Apps",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14.0,
                  color: Colors.white,
                ),
              );
            },
          ),
        ),
        SizedBox(height: 2.0),
        AutoSizeText(
          "Daniel Ciolfi",
          style: TextStyle(
            color: Colors.grey,
            fontSize: 13.0,
          ),
          minFontSize: 12.0,
        ),
        SizedBox(height: 2.0),
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
