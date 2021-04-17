import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ResponsiveMenuActions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ResponsiveVisibility(
          visible: false,
          visibleWhen: [
            Condition.smallerThan(name: TABLET),
          ],
          child: IconButton(icon: Icon(Icons.search), onPressed: () {}),
        ),
        const SizedBox(width: 8.0),
        IconButton(icon: Icon(Icons.home), onPressed: () {}),
        const SizedBox(width: 8.0),
        IconButton(icon: Icon(Icons.send), onPressed: () {}),
        const SizedBox(width: 8.0),
        IconButton(icon: Icon(Icons.favorite_border), onPressed: () {}),
        const SizedBox(width: 16.0),
        CircleAvatar(
          radius: 16.0,
          backgroundImage: Image.asset("assets/images/unsplash.jpg").image,
        ),
      ],
    );
  }
}
