import 'package:flutter/material.dart';
import 'package:second_shot/textControl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyStateLessWidget(),
    );
  }
}

class MyStateLessWidget extends StatelessWidget {
  const MyStateLessWidget({Key? key}) : super(key: key);

  static const String _title = 'Second shot!';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(_title),
        ),
        body: Center(
          child: TextControl(),
        ));
  }
}
