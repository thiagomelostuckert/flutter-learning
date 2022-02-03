import 'package:flutter/material.dart';

class TextResult extends StatelessWidget {
  final String _bodyText;

  TextResult(this._bodyText);

  @override
  Widget build(BuildContext context) {
    return Text(
      _bodyText,
      style: TextStyle(fontSize: 24),
    );
  }
}
