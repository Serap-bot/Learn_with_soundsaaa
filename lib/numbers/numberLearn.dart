import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:learn_with_sounds/constants.dart';
import '../imageBox.dart';

class NumberLearn extends StatefulWidget {
  const NumberLearn({super.key});

  @override
  State<NumberLearn> createState() => _NumberLearnState();
}

class _NumberLearnState extends State<NumberLearn> {
  final play = AssetsAudioPlayer();

  Future ImageOnTap(bool selectNo, String selectImage, String sound) async {
    play.open(Audio("sounds/$sound.mp3"));
    setState(() {
      selectNo = !selectNo;
      showDialog<void>(
          context: context,
          barrierDismissible: false,
          builder: (BuildContext dialogContext) {
            return AlertDialog(
                elevation: 0.0,
                backgroundColor: Colors.transparent,
                actions: [
                  InkWell(
                      onTap: () {
                        setState(() {
                          selectNo = !selectNo;
                          Navigator.of(context).pop(); //geri gelmek için
                        });
                      },
                      child: Container(
                          child: Image.asset(
                              'images/$selectImage.png'),
                          color: Colors.transparent,
                          height: 500,
                          width: 500
                      ))]);
          });
    });
  }

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: backgroundD,
      appBar: AppBar(
          backgroundColor: backgroundD,
          shadowColor: Colors.transparent,
          title: Text('Tüm Rakamlar...', style: tStyle)),
      body: Center(
        child: Wrap(
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
                      ImageBox(onTap: (){ ImageOnTap(selected1, 'numbers1', 'bir');},
                          selectImage: 'numbers1',
                          selectNo: selected1),
                      SizedBox(height: 15, width: 15),
                      ImageBox(onTap: (){ ImageOnTap(selected2, 'numbers2', 'iki');},
                          selectImage: 'numbers2',
                          selectNo: selected2),
                      SizedBox(height: 15, width: 15),
                      ImageBox(onTap: (){ ImageOnTap(selected3, 'numbers3', 'uc');},
                          selectImage: 'numbers3',
                          selectNo: selected3),
                    ],
                  ),
                  SizedBox(height: 15, width: 15),
                  Row(
                    children: [
                      ImageBox(onTap: (){ ImageOnTap(selected4, 'numbers4', 'dort');},
                          selectImage: 'numbers4',
                          selectNo: selected4),
                      SizedBox(height: 15, width: 15),
                      ImageBox(onTap: (){ ImageOnTap(selected5, 'numbers5', 'bes');},
                          selectImage: 'numbers5',
                          selectNo: selected5),
                      SizedBox(height: 15, width: 15),
                      ImageBox(onTap: (){ ImageOnTap(selected6, 'numbers6', 'alti');},
                          selectImage: 'numbers6',
                          selectNo: selected6),
                    ],
                  ),
                  SizedBox(height: 15, width: 15),
                  Row(
                    children: [
                      ImageBox(onTap: (){ ImageOnTap(selected7, 'numbers7', 'yedi');},
                          selectImage: 'numbers7',
                          selectNo: selected7),
                      SizedBox(height: 15, width: 15),
                      ImageBox(onTap: (){ ImageOnTap(selected8, 'numbers8', 'sekiz');},
                          selectImage: 'numbers8',
                          selectNo: selected8),
                      SizedBox(height: 15, width: 15),
                      ImageBox(onTap: (){ ImageOnTap(selected9, 'numbers9', 'dokuz');},
                          selectImage: 'numbers9',
                          selectNo: selected9),
                    ],
                  ),
                  SizedBox(height: 15, width: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ImageBox(onTap: (){ ImageOnTap(selected10, 'numbers0', 'sifir');},
                          selectImage: 'numbers0',
                          selectNo: selected10),
                    ],
                  ),
                  SizedBox(height: 15, width: 15),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
