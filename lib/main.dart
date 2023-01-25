import 'package:flutter/material.dart';
import 'package:learn_with_sounds/constants.dart';
import 'homePage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //title: _title,
      home: Scaffold(
        //appBar: AppBar(
           // title: Center(
                //child: Text(title, style: btStyle)),
                  backgroundColor: Colors.pink,
                  //shadowColor: Colors.transparent),
        body: const MyHomePage(),
      ),
    );
  }
}

