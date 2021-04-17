import 'package:flutter/material.dart';
import 'package:flutter_app/pages/home/widgets/story_circle_widget.dart';
import 'package:responsive_framework/responsive_framework.dart';

class StoriesListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bool isMobile = ResponsiveWrapper.of(context).isMobile;

    return Container(
      height: 110.0,
      margin: EdgeInsets.symmetric(vertical: isMobile ? 16.0 : 36.0),
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => StoryCircleWidget(),
        separatorBuilder: (context, index) => const SizedBox(width: 16.0),
        itemCount: 16,
      ),
    );
  }
}
