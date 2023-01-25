import 'package:flutter/material.dart';
import 'package:learn_with_sounds/constants.dart';
import 'package:learn_with_sounds/numbers/numberLearn.dart';
import 'package:learn_with_sounds/numbers/numberFun.dart';
import 'package:learn_with_sounds/numbers/numberGame.dart';
import '../butonWidget.dart';

class MyNumberPage extends StatefulWidget {
  const MyNumberPage({super.key});

  @override
  State<MyNumberPage> createState() => _MyNumberPageState();
}

class _MyNumberPageState extends State<MyNumberPage> {

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
              "Rakamlar...",
              style: tStyle),
            const SizedBox(height: 40),
            ButonWidget(label: 'Tüm Rakamlar', style: bStyle, onPressed: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => NumberLearn()))),
            const SizedBox(height: 40),
            ButonWidget(label: 'Eğlen', style: bStyle, onPressed: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => NumberFunPage()))),
            const SizedBox(height: 40),
            ButonWidget(label: 'Oyna', style: bStyle, onPressed: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => NumberGamePage()))),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
