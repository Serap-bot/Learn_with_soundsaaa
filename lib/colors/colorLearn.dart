import 'package:flutter/material.dart';
import 'package:learn_with_sounds/constants.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import '../colorBox.dart';

class ColorLearn extends StatefulWidget {
  const ColorLearn({super.key});

  @override
  State<ColorLearn> createState() => _ColorLearnState();
}

class _ColorLearnState extends State<ColorLearn> {
  final play = AssetsAudioPlayer();

  Future soundsOnTap(bool selectNo, Color selectColor, String sound) async {
      play.open(Audio('sounds/$sound.mp3'));
      setState( () {
        selectNo = !selectNo;
        showDialog<void>(
            context: context,
            barrierDismissible: false,
            builder: (BuildContext dialogContext) {
              return AlertDialog(backgroundColor: Colors.transparent,
                  actions: [
                InkWell(
                    onTap: () {
                      setState(() {
                        selectNo = !selectNo;
                        Navigator.of(context).pop(); //geri gelmek için
                      });
                    },
                    child: Container(
                      width: 200,
                      height: 200,
                      color: selectColor,
                    ))
              ]);
            });
      }
      );
  }

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: backgroundD,
      appBar: AppBar(
          backgroundColor: backgroundD,
          shadowColor: Colors.transparent,
          title: Text('Tüm Renkler...', style: tStyle)),
      body: Center(
        child: Wrap(// Taşma yapmaması için kullanılır
          direction: Axis.horizontal,
          alignment: WrapAlignment.spaceAround,
          runAlignment: WrapAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(left: screen / 4),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const SizedBox(height: 15, width: 15),
                  Row(
                    children: [
                      ColorBox(selectColor: Colors.pink, onTap: (){
                        soundsOnTap(selected1, Colors.pink, 'pembe');
                      }, selectNo: selected1),
                      const SizedBox(height: 15, width: 15),
                      ColorBox(selectColor: Colors.white, onTap: (){
                        soundsOnTap(selected2, Colors.white, 'beyaz');
                      }, selectNo: selected2),
                      const SizedBox(height: 15, width: 15),
                      ColorBox(selectColor: Colors.blue, onTap: (){
                        soundsOnTap(selected3, Colors.blue, 'mavi');
                      }, selectNo: selected3),
                    ],
                  ),
                  const SizedBox(height: 15, width: 15),
                  Row(
                    children: [
                      ColorBox(selectColor: Colors.purple, onTap: (){
                        soundsOnTap(selected4, Colors.purple, 'mor');
                      }, selectNo: selected4),
                      const SizedBox(height: 15, width: 15),
                      ColorBox(selectColor: Colors.green, onTap: (){
                        soundsOnTap(selected5, Colors.green, 'yesil');
                      }, selectNo: selected5),
                      const SizedBox(height: 15, width: 15),
                      ColorBox(selectColor: Colors.grey, onTap: (){
                        soundsOnTap(selected6, Colors.grey, 'gri');
                      }, selectNo: selected6),
                    ],
                  ),
                  const SizedBox(height: 15, width: 15),
                  Row(
                    children: [
                      ColorBox(selectColor: Colors.brown, onTap: (){
                        soundsOnTap(selected7, Colors.brown, 'kahverengi');
                      }, selectNo: selected7),
                      const SizedBox(height: 15, width: 15),
                      ColorBox(selectColor: Colors.orange, onTap: (){
                        soundsOnTap(selected8, Colors.orange, 'turuncu');
                      }, selectNo: selected8),
                      const SizedBox(height: 15, width: 15),
                      ColorBox(selectColor: Colors.yellow, onTap: (){
                        soundsOnTap(selected9, Colors.yellow, 'sari');
                      }, selectNo: selected9),
                    ],
                  ),
                  const SizedBox(height: 15, width: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ColorBox(selectColor: Colors.black, onTap: (){
                        soundsOnTap(selected10, Colors.black, 'siyah');
                      }, selectNo: selected10),
                      const SizedBox(height: 15, width: 15),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
