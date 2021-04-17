import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ResponsiveAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      elevation: 1.0,
      title: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 1000.0),
        child: Row(
          children: [
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: Text(
                "Flutter",
                style: TextStyle(
                  fontSize: 30.0,
                  fontFamily: "Billabong",
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 400.0),
              child: Container(
                width: double.infinity,
                height: 30,
                padding: const EdgeInsets.only(left: 6.0),
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                  ),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 16.0,
                    ),
                    const SizedBox(width: 6.0),
                    Expanded(
                      child: TextField(
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.white,
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          isCollapsed: true,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
