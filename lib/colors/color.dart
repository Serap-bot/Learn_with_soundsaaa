import 'package:flutter/material.dart';
import 'package:learn_with_sounds/butonWidget.dart';
import 'package:learn_with_sounds/colors/colorFun.dart';
import 'package:learn_with_sounds/colors/colorGame.dart';
import 'package:learn_with_sounds/colors/colorLearn.dart';
import 'package:learn_with_sounds/constants.dart';

class MyColorPage extends StatefulWidget {
  const MyColorPage({super.key});

  @override
  State<MyColorPage> createState() => _MyColorPageState();
}

class _MyColorPageState extends State<MyColorPage> {

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
                "Renkler...",
                style: tStyle),
              const SizedBox(height: 40),
              ButonWidget(label: 'Tüm Renkler', style: bStyle, onPressed: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => ColorLearn()))),
              const SizedBox(height: 40),
              ButonWidget(label: 'Eğlen', style: bStyle, onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ColorFunPage()))),
              const SizedBox(height: 40),
              ButonWidget(label: 'Oyna', style: bStyle, onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ColorGamePage()))),
              const SizedBox(height: 40),
            ],
          ),
        ),
      );
  }
}
