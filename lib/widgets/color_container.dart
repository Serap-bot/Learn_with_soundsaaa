import 'package:flutter/material.dart';

import 'package:flutter/material.dart';



class ColorContainer extends StatelessWidget {
  ColorContainer({required this.color,required this.selected,required this.callback,
    Key? key
  }) : super(key: key);
  Color color;
  bool selected;
  VoidCallback callback;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callback
    );
  }
}