import 'package:flutter/material.dart';
import './textResult.dart';

class TextControl extends StatefulWidget {
  const TextControl({Key? key}) : super(key: key);
  @override
  _TextControlState createState() => _TextControlState();
}

class _TextControlState extends State<TextControl> {
  String _bodyText = 'Hit!';

  void _handleTap() {
    setState(() {
      _bodyText += '\nHit!';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      TextResult(_bodyText),
      ElevatedButton(onPressed: _handleTap, child: Text('Add Hit!'))
    ]);
  }
}
