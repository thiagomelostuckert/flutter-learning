
import 'package:flutter/material.dart';
import './TextWidget.dart';
import './TextControl.dart';

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  
  void setBodyText() {
    setState(() {
      TextControl.addBodyText("\nadd novo texto");
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('Appbar do teste'),
      ),
      body: Center(child: buildColumn()),
    ));
  }

  Widget buildColumn() => Column(children: [
        TextWidget.getTextWidget(),
        ElevatedButton(
          onPressed: setBodyText,
          child: const Text('Modifica o texto'),
        )
      ]);
}
