import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/pages/page_1.dart';
import 'package:flutter_app/pages/page_10.dart';
import 'package:flutter_app/pages/page_11.dart';
import 'package:flutter_app/pages/page_12.dart';
import 'package:flutter_app/pages/page_2.dart';
import 'package:flutter_app/pages/page_3.dart';
import 'package:flutter_app/pages/page_4.dart';
import 'package:flutter_app/pages/page_5.dart';
import 'package:flutter_app/pages/page_6.dart';
import 'package:flutter_app/pages/page_7.dart';
import 'package:flutter_app/pages/page_8.dart';
import 'package:flutter_app/pages/page_9.dart';
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
              widget: Page1(),
            ),
            ElevatedButtonWidget(
              label: "Expanded",
              widget: Page2(),
            ),
            ElevatedButtonWidget(
              label: "Flexible",
              widget: Page3(),
            ),
            ElevatedButtonWidget(
              label: "Wrap",
              widget: Page4(),
            ),
            ElevatedButtonWidget(
              label: "Align 1",
              widget: Page5(),
            ),
            ElevatedButtonWidget(
              label: "Align 2",
              widget: Page6(),
            ),
            ElevatedButtonWidget(
              label: "Positioned",
              widget: Page7(),
            ),
            ElevatedButtonWidget(
              label: "Orientation Builder",
              widget: Page8(),
            ),
            ElevatedButtonWidget(
              label: "FittedBox",
              widget: Page9(),
            ),
            ElevatedButtonWidget(
              label: "ListView",
              widget: Page10(),
            ),
            ElevatedButtonWidget(
              label: "GridView - COUNT",
              widget: Page11(),
            ),
            ElevatedButtonWidget(
              label: "GridView - EXTENT",
              widget: Page12(),
            ),
          ],
        ),
      ),
    );
  }
}
