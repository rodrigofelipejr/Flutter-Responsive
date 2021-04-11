import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/modules/advanced/advanced.dart';
import 'package:flutter_app/modules/basic/basic.dart';
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
              label: "Basic",
              widget: Basic(),
            ),
            ElevatedButtonWidget(
              label: "Advanced",
              widget: Advanced(),
            ),
          ],
        ),
      ),
    );
  }
}
