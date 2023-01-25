import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

final play = AssetsAudioPlayer();
class ImageBox extends StatelessWidget {

  final String selectImage;
  final VoidCallback onTap;
  bool selectNo;

  ImageBox({Key? key,
    required this.selectImage,
    required this.onTap,
    required this.selectNo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap:onTap,
        child: Visibility(
            visible: selectNo,
            child: Center(
                child: Container(
                    child: Image.asset('images/$selectImage.png'),
                    color: Colors.transparent,
                    height: 200,
                    width: 200
                ),
            ),
        ),
    );
  }
}



