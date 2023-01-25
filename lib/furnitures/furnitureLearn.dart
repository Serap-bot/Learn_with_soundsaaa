import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import '../imageBox.dart';

class FurnitureLearn extends StatefulWidget {
  const FurnitureLearn({super.key});

  @override
  State<FurnitureLearn> createState() => _FurnitureLearnState();
}

class _FurnitureLearnState extends State<FurnitureLearn> {
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
          title: Text('Tüm Eşyalar...', style: tStyle)),
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
                      SizedBox(height: 15, width: 15),
                      ImageBox(onTap: (){ ImageOnTap(selected1, 'furniture1', 'catal');},
                          selectImage: 'furniture1',
                          selectNo: selected1),
                      SizedBox(height: 15, width: 15),
                      ImageBox(onTap: (){ ImageOnTap(selected2, 'furniture2', 'kasik');},
                          selectImage: 'furniture2',
                          selectNo: selected2),
                      SizedBox(height: 15,width: 15),
                      ImageBox(onTap: (){ ImageOnTap(selected3, 'furniture3', 'tabak');},
                          selectImage: 'furniture3',
                          selectNo: selected3),
                    ],
                  ),
                  SizedBox(height: 15, width: 15),
                  Row(
                    children: [
                      ImageBox(onTap: (){ ImageOnTap(selected4, 'furniture4', 'bardak');},
                          selectImage: 'furniture4',
                          selectNo: selected4),
                      SizedBox(height: 15, width: 15),
                      ImageBox(onTap: (){ ImageOnTap(selected5, 'furniture5', 'masa');},
                          selectImage: 'furniture5',
                          selectNo: selected5),
                      SizedBox(height: 15, width: 15),
                      ImageBox(onTap: (){ ImageOnTap(selected6, 'furniture6', 'koltuk');},
                          selectImage: 'furniture6',
                          selectNo: selected6),
                    ],
                  ),
                  SizedBox(height: 15, width: 15),
                  Row(
                    children: [
                      ImageBox(onTap: (){ ImageOnTap(selected7, 'furniture7', 'sandalye');},
                          selectImage: 'furniture7',
                          selectNo: selected7),
                      SizedBox(height: 15, width: 15),
                      ImageBox(onTap: (){ ImageOnTap(selected8, 'furniture8', 'yatak');},
                          selectImage: 'furniture8',
                          selectNo: selected8),
                      SizedBox(height: 15, width: 15),
                      ImageBox(onTap: (){ ImageOnTap(selected9, 'furniture9', 'dolap');},
                          selectImage: 'furniture9',
                          selectNo: selected9),],
                  ),
                  SizedBox(height: 15, width: 15),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ImageBox(onTap: (){ ImageOnTap(selected10, 'furniture10', 'yastik');},
                          selectImage: 'furniture10',
                          selectNo: selected10),],
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
