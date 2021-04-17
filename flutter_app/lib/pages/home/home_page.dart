import 'package:flutter/material.dart';
import 'package:flutter_app/pages/home/widgets/responsive_app_bar_widget.dart';
import 'package:flutter_app/pages/home/widgets/stories_list.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 52),
        child: ResponsiveAppBarWidget(),
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 1000.0),
          child: ListView(
            children: [
              StoriesListWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
