import 'package:flutter/material.dart';
import 'package:flutter_app/breakpoint.dart';
import 'package:flutter_app/pages/home/widgets/app_bar/mobile_app_bar.dart';
import 'package:flutter_app/pages/home/widgets/app_bar/web_app_bar.dart';
import 'package:flutter_app/pages/home/widgets/sections/advantages_ection.dart';
import 'package:flutter_app/pages/home/widgets/sections/top_section.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          backgroundColor: Colors.black,
          appBar: constraints.maxWidth < mobileBreakpoint
              ? PreferredSize(
                  preferredSize: Size(double.infinity, 56),
                  child: MobileAppBar(),
                )
              : PreferredSize(
                  preferredSize: Size(double.infinity, 72.0),
                  child: WebAppBar(),
                ),
          drawer: constraints.maxWidth < mobileBreakpoint ? Drawer() : null,
          body: Align(
            alignment: Alignment.topCenter,
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 1400.0),
              child: ListView(
                children: [
                  TopSection(),
                  AdvantagesSection(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
