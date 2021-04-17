import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_app/pages/home/widgets/suggestion_item_widget.dart';
import 'package:responsive_framework/responsive_framework.dart';

class RightPanelWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveVisibility(
      visible: false,
      visibleWhen: [
        Condition.largerThan(name: TABLET),
      ],
      child: Container(
        margin: const EdgeInsets.fromLTRB(36.0, 56.0, 20.0, 0),
        width: 300,
        child: Column(
          children: [
            Row(
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
                      "Sair",
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
            const SizedBox(height: 24.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Sugestões para você",
                  style: TextStyle(
                    color: Colors.grey[500],
                    fontWeight: FontWeight.w700,
                  ),
                ),
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () {},
                    child: Text(
                      "Ver tudo",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8.0),
            SuggestionItemWidget(),
            SuggestionItemWidget(),
            SuggestionItemWidget(),
          ],
        ),
      ),
    );
  }
}
