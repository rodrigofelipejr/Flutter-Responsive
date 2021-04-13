import 'package:flutter/material.dart';
import 'package:flutter_app/breakpoint.dart';
import 'package:flutter_app/pages/home/widgets/mobile_app_bar.dart';
import 'package:flutter_app/pages/home/widgets/web_app_bar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
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
      );
    });
  }
}
