import 'package:flutter/material.dart';
import 'package:learn_with_sounds/furnitures/furnitureFun.dart';
import 'package:learn_with_sounds/furnitures/furnitureGame.dart';
import 'package:learn_with_sounds/furnitures/furnitureLearn.dart';
import '../butonWidget.dart';
import '../constants.dart';

class MyFurniturePage extends StatefulWidget {
  const MyFurniturePage({super.key});

  @override
  State<MyFurniturePage> createState() => _MyFurniturePageState();
}

class _MyFurniturePageState extends State<MyFurniturePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(title: Center(child: Text(title, style: btStyle)),
          backgroundColor: background,
          shadowColor: Colors.transparent),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset('images/pngegg.png', color: Colors.white,),
            Text(
              "Eşyalar...",
              style: tStyle),
            const SizedBox(height: 40),
            ButonWidget(label: 'Tüm Eşyalar', style: bStyle, onPressed: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => FurnitureLearn()))),
            const SizedBox(height: 40),
            ButonWidget(label: 'Eğlen', style: bStyle, onPressed: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => FurnitureFunPage()))),
            const SizedBox(height: 40),
            ButonWidget(label: 'Oyna', style: bStyle, onPressed: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => FurnitureGamePage()))),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
