import 'package:flutter/material.dart';
import '../constants.dart';
import 'numberClass.dart';

class NumberFunPage extends StatefulWidget {
  const NumberFunPage({super.key});

  @override
  State<NumberFunPage> createState() => _NumberFunPageState();
}
int i = 0;

class _NumberFunPageState extends State<NumberFunPage> {
  bool selected1 = true;
  bool selected2 = true;
  bool selected3 = true;

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size.width;

    numbers x = numbers();

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
                padding: EdgeInsets.only(left: screen / 3),
                child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(children: [
                        Center(
                            child: Container(child: Image.asset(
                                'images/numbers$i.png'),
                                height: 200, width: 200))
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
                        SizedBox(height:100, width: 80),
                        IconButton(
                          alignment: Alignment.bottomRight,
                            onPressed: () {
                              setState(() {
                                if(i < x.number.length){
                                  i++;
                                }
                              });
                            },
                            icon: Icon(Icons.arrow_right, size:60),
                            color: Colors.black),
                      ])
                    ])),
          ],
        ),
      ),
    );
  }
}
