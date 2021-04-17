import 'package:flutter/material.dart';
import 'package:flutter_app/pages/home/widgets/post_widget.dart';
import 'package:flutter_app/pages/home/widgets/responsive_app_bar_widget.dart';
import 'package:flutter_app/pages/home/widgets/right_panel_widget.dart';
import 'package:flutter_app/pages/home/widgets/stories_list_widget.dart';

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
          child: Row(
            children: [
              Expanded(
                child: ListView(
                  children: [
                    StoriesListWidget(),
                    PostWidget(),
                    PostWidget(),
                    PostWidget(),
                    PostWidget(),
                  ],
                ),
              ),
              RightPanelWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
