import 'package:flutter/material.dart';
import 'package:learn_with_sounds/constants.dart';
import 'colorClass.dart';


class ColorGamePage extends StatefulWidget {
  const ColorGamePage({super.key});
  @override
  State<ColorGamePage> createState() => _ColorGamePageState();
}

class _ColorGamePageState extends State<ColorGamePage> {

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size.width;
    final ButtonStyle style = ElevatedButton.styleFrom(
        backgroundColor: Colors.white10,
        textStyle: const TextStyle(color: Colors.grey, fontSize: 20));

    return Scaffold(
      backgroundColor: backgroundD,
      appBar: AppBar(
          title: Text('Oyna...', style: tStyle),
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
                                color: X.aSikkiYaz(),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {X.cevapKontrol(X.aSikkiYaz());
                                    });
                                  },
                                ),
                                height: 200,
                                width: 200)),
                        SizedBox(height: 50, width: 50),
                        Center(
                            child: Container(
                                color: X.bSikkiYaz(),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {X.cevapKontrol(X.bSikkiYaz());
                                    });
                                  },
                                ),
                                height: 200,
                                width: 200))
                      ]),
                      SizedBox(height: 50, width: 50),
                      Row(mainAxisSize: MainAxisSize.max, children: [
                        Text(X.soruYaz(), style: tStyle),
                      ])
                    ])),
          ],
        ),
      ),
    );
  }

}
