import 'package:flutter/material.dart';
import 'package:learn_with_sounds/constants.dart';
import 'colorClass.dart';

class ColorFunPage extends StatefulWidget {
  const ColorFunPage({super.key});

  @override
  State<ColorFunPage> createState() => _ColorFunPageState();
}


class _ColorFunPageState extends State<ColorFunPage> {
  bool selected1 = true;
  bool selected2 = true;
  bool selected3 = true;
  int i = 0;

  @override
  Widget build(BuildContext context) {

    final screen = MediaQuery.of(context).size.width;
    colors x = colors();

    return Scaffold(
      backgroundColor: backgroundD,
      appBar: AppBar(title: Text('Eğlen...', style:  tStyle),
        backgroundColor: backgroundD,
          shadowColor: Colors.transparent),
      body: Center(
        child: Wrap(
          direction: Axis.horizontal,
          alignment: WrapAlignment.spaceAround,
          runAlignment: WrapAlignment.spaceBetween,
          children: [
            Padding(
                padding: EdgeInsets.only(left: screen/3),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(children: [
                        Center(
                            child: Container(
                                color: x.color[i], height: 200, width: 200))
                      ]),
                      Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                        IconButton(
                            alignment: Alignment.bottomLeft,
                            onPressed: () {
                              setState(() {
                                if(i > 0){
                                  i--;
                                }
                              });
                            },
                            icon: Icon(Icons.arrow_left, size: 60),
                            color: Colors.black),
                        SizedBox(height: 100, width: 80),
                        IconButton(
                            alignment: Alignment.bottomRight,
                            onPressed: () {
                              setState(() {
                                if(i < x.color.length -1){
                                  i++;
                                }
                              });
                            },
                            icon: Icon(Icons.arrow_right, size: 60),
                            color: Colors.black),
                      ])
                    ])),
          ],
        ),
      ),
    );
  }
}
