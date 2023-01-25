import 'package:flutter/material.dart';

class ButonWidget extends StatelessWidget {

  final String label;
  var style;
  var onPressed;

  ButonWidget({Key? key, required this.label, required this.style, required this.onPressed,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: style,
        onPressed: onPressed,
        child: Text(label));

  }
}
