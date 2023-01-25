import 'package:flutter/material.dart';
import 'package:learn_with_sounds/colors/color.dart';
import 'package:learn_with_sounds/constants.dart';
import 'package:learn_with_sounds/furnitures/furniture.dart';
import 'package:learn_with_sounds/homeScreen.dart';
import 'numbers/number.dart';
import 'butonWidget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;
    return Container(
          width: screen.width,
          height: screen.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/arkaplan0.jpg'),
              fit: BoxFit.cover,
            ),
          ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                  "Hadi başlayalım...",
                  style: tStyle),
              const SizedBox(height: 40),
              ButonWidget(label: 'Renkler', style: bStyle, onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MyColorPage()))),
              const SizedBox(height: 40),
              ButonWidget(label: 'Rakamlar', style: bStyle, onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MyNumberPage()))),
              const SizedBox(height: 40),
              ButonWidget(label: 'Eşyalar', style: bStyle, onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MyFurniturePage()))),
              const SizedBox(height: 40),
              ButonWidget(label: 'Sorular', style: bStyle, onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomeScreen()))),
            ],
          ),
        ),
      ),
    );
  }
}
