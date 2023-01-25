import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

final play = AssetsAudioPlayer();
class ColorBox extends StatelessWidget {

  final Color selectColor;
  final VoidCallback onTap;
  bool selectNo;

  ColorBox({Key? key,
    required this.selectColor,
    required this.onTap,
    required this.selectNo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Visibility(
        visible: selectNo,
        child: Center(
          child: Container(
            height: 100,
            width: 100,
            color: selectColor,
          ),
        ),
      ),
    );
  }
}




