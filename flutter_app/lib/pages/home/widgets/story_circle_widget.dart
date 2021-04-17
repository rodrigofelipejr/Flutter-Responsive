import 'package:flutter/material.dart';

class StoryCircleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 66.0,
          width: 66.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [
                Colors.blue,
                Colors.green,
              ],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ),
          ),
          alignment: Alignment.center,
          child: Container(
            height: 60.0,
            width: 60.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black,
            ),
            alignment: Alignment.center,
            child: CircleAvatar(
              radius: 26.0,
              backgroundImage: Image.asset("assets/images/unsplash.jpg").image,
            ),
          ),
        ),
        const SizedBox(height: 6.0),
        Text(
          "the_lion",
          style: TextStyle(
            fontSize: 12.0,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
