import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/pages/align_widget.dart';
import 'package:flutter_app/pages/alignment_widget.dart';
import 'package:flutter_app/pages/expanded_widget.dart';
import 'package:flutter_app/pages/fittedbox_widget.dart';
import 'package:flutter_app/pages/flexible_widget.dart';
import 'package:flutter_app/pages/gridview_count_widget.dart';
import 'package:flutter_app/pages/gridview_extent_widget.dart';
import 'package:flutter_app/pages/listview_widget.dart';
import 'package:flutter_app/pages/mediaquery_widget.dart';
import 'package:flutter_app/pages/orientation_widget.dart';
import 'package:flutter_app/pages/positioned_widget.dart';
import 'package:flutter_app/pages/wrap_widget.dart';
import 'package:flutter_app/widgets/elevated_button_widget.dart';

void main() => runApp(DevicePreview(
      builder: (context) => MyApp(),
      enabled: false,
    ));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Responsive'),
      builder: DevicePreview.appBuilder,
      locale: DevicePreview.locale(context),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
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
              label: "Orientation",
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
    );
  }
}
