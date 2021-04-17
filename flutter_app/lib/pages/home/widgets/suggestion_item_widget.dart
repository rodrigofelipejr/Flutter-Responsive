import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SuggestionItemWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(4.0, 6.0, 0, 6.0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 29.0,
            backgroundImage: Image.asset(
              "assets/images/unsplash.jpg",
            ).image,
            backgroundColor: Colors.transparent,
          ),
          const SizedBox(width: 16.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "the_lion",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "The Lion",
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () {},
              child: Text(
                "Ligar",
                style: TextStyle(
                  color: Color(0xFF0396f6),
                  fontWeight: FontWeight.w700,
                  fontSize: 12.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
