import 'package:flutter/material.dart';
import 'package:flutter_app/modules/advanced/pages/constrainedbox_wdiget.dart';
import 'package:flutter_app/modules/advanced/pages/constraints_widget.dart';
import 'package:flutter_app/modules/advanced/pages/limitedbox_widget.dart';
import 'package:flutter_app/modules/advanced/pages/overflowbox_widget.dart';
import 'package:flutter_app/modules/advanced/pages/unconstrainedbox_widget.dart';
import 'package:flutter_app/widgets/elevated_button_widget.dart';

class Advanced extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Basic"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButtonWidget(
                label: "Constraints",
                widget: ConstraintsWidget(),
              ),
              ElevatedButtonWidget(
                label: "ConstrainedBox",
                widget: ConstrainedBoxWidget(),
              ),
              ElevatedButtonWidget(
                label: "UnconstrainedBox",
                widget: UnconstrainedBoxWidget(),
              ),
              ElevatedButtonWidget(
                label: "OverflowBox",
                widget: OverflowBoxWidget(),
              ),
              ElevatedButtonWidget(
                label: "LimitedBox",
                widget: LimitedBoxWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
