import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_app/breakpoint.dart';
import 'package:flutter_app/pages/home/widgets/course_item.dart';

class CoursesSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return GridView.builder(
          itemCount: 20,
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 300,
            crossAxisSpacing: 16.0,
            mainAxisSpacing: 16.0,
          ),
          padding: EdgeInsets.symmetric(
            vertical: 16.0,
            horizontal: constraints.maxWidth >= tabletBreakpoint ? 0 : 16.0,
          ),
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return CourseItem();
          },
          shrinkWrap: true,
        );
      },
    );
  }
}
