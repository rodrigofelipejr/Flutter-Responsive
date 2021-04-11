import 'package:flutter/material.dart';
import 'package:flutter_app/modules/basic/pages/align_widget.dart';
import 'package:flutter_app/modules/basic/pages/alignment_widget.dart';
import 'package:flutter_app/modules/basic/pages/expanded_widget.dart';
import 'package:flutter_app/modules/basic/pages/fittedbox_widget.dart';
import 'package:flutter_app/modules/basic/pages/flexible_widget.dart';
import 'package:flutter_app/modules/basic/pages/gridview_count_widget.dart';
import 'package:flutter_app/modules/basic/pages/gridview_extent_widget.dart';
import 'package:flutter_app/modules/basic/pages/listview_widget.dart';
import 'package:flutter_app/modules/basic/pages/media_query_widget.dart';
import 'package:flutter_app/modules/basic/pages/orientation_widget.dart';
import 'package:flutter_app/modules/basic/pages/positioned_widget.dart';
import 'package:flutter_app/modules/basic/pages/wrap_widget.dart';
import 'package:flutter_app/widgets/elevated_button_widget.dart';

class Basic extends StatelessWidget {
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
                label: "MediaQuery",
                widget: MediaQueryWidget(),
              ),
              ElevatedButtonWidget(
                label: "Expanded",
                widget: ExpandedWidget(),
              ),
              ElevatedButtonWidget(
                label: "Flexible",
                widget: FlexibleWidget(),
              ),
              ElevatedButtonWidget(
                label: "Wrap",
                widget: WrapWidget(),
              ),
              ElevatedButtonWidget(
                label: "Align",
                widget: AlignWidget(),
              ),
              ElevatedButtonWidget(
                label: "Alignment",
                widget: AlignmentWidget(),
              ),
              ElevatedButtonWidget(
                label: "Positioned",
                widget: PositionedWidget(),
              ),
              ElevatedButtonWidget(
                label: "Orientation Builder",
                widget: OrientationWidget(),
              ),
              ElevatedButtonWidget(
                label: "FittedBox",
                widget: FittedBoxWidget(),
              ),
              ElevatedButtonWidget(
                label: "ListView",
                widget: ListViewWidget(),
              ),
              ElevatedButtonWidget(
                label: "GridView - Count",
                widget: GridViewCountWidget(),
              ),
              ElevatedButtonWidget(
                label: "GridView - Extent",
                widget: GridViewExtentWidget(),
              ),
            ],
          ),
        ),
      ),
    );
    ;
  }
}
