import 'package:flutter/material.dart';
import 'package:learn_with_sounds/furnitures/furnitureClass.dart';
import '../constants.dart';

class FurnitureFunPage extends StatefulWidget {
  const FurnitureFunPage({super.key});

  @override
  State<FurnitureFunPage> createState() => _FurnitureFunPageState();
}
int i = 1;

class _FurnitureFunPageState extends State<FurnitureFunPage> {
  bool selected1 = true;
  bool selected2 = true;
  bool selected3 = true;

  @override
  Widget build(BuildContext context) {

    final screen = MediaQuery.of(context).size.width;
    FurnitureTest x = FurnitureTest();

    return Scaffold(backgroundColor: backgroundD,
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
                                'images/furniture$i.png'),
                               height: 200, width: 200))
                      ]),
                      Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                        IconButton(
                            alignment: Alignment.bottomLeft,
                            onPressed: () {
                              setState(() {
                                if(i > 1){
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
                                if(i < x.FurnitureQuestionsAnswers.length){
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
