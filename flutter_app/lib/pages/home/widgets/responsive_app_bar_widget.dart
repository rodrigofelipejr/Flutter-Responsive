import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_app/pages/home/widgets/responsive_menu_actions.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ResponsiveAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      elevation: 1.0,
      title: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 1000.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
            ResponsiveVisibility(
              visible: false,
              visibleWhen: [
                Condition.largerThan(name: MOBILE),
              ],
              child: Flexible(
                child: ConstrainedBox(
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
                          color: Colors.white.withOpacity(0.5),
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
              ),
            ),
            ResponsiveMenuActions(),
          ],
        ),
      ),
    );
  }
}
