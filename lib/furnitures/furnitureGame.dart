import 'package:flutter/material.dart';
import 'package:learn_with_sounds/constants.dart';
import 'package:learn_with_sounds/furnitures/furnitureClass.dart';

class FurnitureGamePage extends StatefulWidget {
  const FurnitureGamePage({super.key});

  @override
  State<FurnitureGamePage> createState() => _FurnitureGamePageState();
}

class _FurnitureGamePageState extends State<FurnitureGamePage> {
  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size.width;
    final ButtonStyle style = ElevatedButton.styleFrom(
        backgroundColor: Colors.white10,
        textStyle: const TextStyle(color: Colors.grey, fontSize: 20));

    return Scaffold(
      backgroundColor: backgroundD,
      appBar: AppBar(title: Text('Oyna...', style:  tStyle),
          backgroundColor: backgroundD,
          shadowColor: Colors.transparent),
      body: Center(
        child: Wrap(
          direction: Axis.horizontal,
          alignment: WrapAlignment.spaceAround,
          runAlignment: WrapAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(left: screen / 4),
              child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(children: [
                      Center(
                          child: Container(
                              child: InkWell(
                                child: Image.asset(
                                  X.aSikkiYaz(),
                                ),
                                onTap: () {
                                  setState(() {
                                    X.cevapKontrol(X.aSikkiYaz());
                                  });
                                },
                              ),
                              height: 180,
                              width: 180)),
                      SizedBox(height: 100, width: 80),
                      Center(
                          child: Container(
                              child: InkWell(
                                child: Image.asset(
                                  X.bSkkiYaz(),
                                ),
                                onTap: () {
                                  setState(() {
                                    X.cevapKontrol(X.bSkkiYaz());
                                  });
                                },
                              ),
                              height: 200,
                              width: 200)),
                    ]),
                    SizedBox(height: 100, width: 80),
                    Row(mainAxisSize: MainAxisSize.max, children: [
                      Text(X.soruYaz(), style: tStyle),
                    ]),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
