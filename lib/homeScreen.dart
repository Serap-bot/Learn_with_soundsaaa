import 'package:flutter/material.dart';
import 'package:learn_with_sounds/dbConnect.dart';
import 'package:learn_with_sounds/nextButton.dart';
import 'package:learn_with_sounds/optionCard.dart';
import 'package:learn_with_sounds/questionModel.dart';
import 'package:learn_with_sounds/questionWidget.dart';
import 'package:learn_with_sounds/resultBox.dart';
import 'constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  var db = DBconnect();
  late Future _question;

  Future<List<Question>> getData()async{
    return db.fetchQuestion();
  }

  @override
  void initState() {
    _question = getData();
    super.initState();
  }

  int index = 0;
  int score = 0;
  bool isPressed = false;
  bool isAlreadySelected = false;

  void nextQuestion(int questionLength) {
    if (index == questionLength - 1) {
      showDialog(
          context: context,
          barrierDismissible: false,
          builder: (ctx) => ResultBox(
              result: score,
              questionLength: questionLength,
              onPressed: startOver));
    } else {
      if (isPressed == true) {//true ise içine gir
        setState(() {
          index++;
          isPressed = false;
          isAlreadySelected = false;
        });
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Please select any option'),
            behavior: SnackBarBehavior.floating,
            margin: EdgeInsets.symmetric(vertical: 20.0),
          ),
        );
      }
    }
  }

  void checkedAnswerAndUpdate(bool value) {

    if (isAlreadySelected) {
      return;
    } else {

      if (value == true) {
        score++;
        setState(() {
          isPressed = true;
          isAlreadySelected = true;
        });
      }else {
        setState(() {
          isPressed = true;
          isAlreadySelected = true;
        });
      }

    }

  }

  void startOver() {
    setState(() {
      index = 0;
      score = 0;
      isPressed = false;
      isAlreadySelected = false;
    });
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _question as Future<List<Question>>,
      builder: (ctx, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasError) {
            return Center(
              child: Text('${snapshot.error}'),
            );
          } else if (snapshot.hasData) {
            var extractedData = snapshot.data as List<Question>;
            return Scaffold(
              backgroundColor: background,
              appBar: AppBar(
                title: const Text('Quiz...'),
                backgroundColor: background,
                shadowColor: Colors.transparent,
                actions: [
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Text(
                      'Score : $score',
                      style: const TextStyle(fontSize: 18.0),
                    ),
                  ),
                ],
              ),
              body: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  children: [
                    QuestionWidget(
                      indexAction: index,
                      question: extractedData[index].title,
                      totalQuestion: extractedData.length,
                    ),
                    const Divider(color: neutral),
                    const SizedBox(height: 25.0),
                    //Şıkları bir kart içinde ekrana verir.
                    for (int i = 0;
                        i < extractedData[index].options.length;
                        i++)
                      GestureDetector(
                        onTap: () {
                          checkedAnswerAndUpdate(extractedData[index].options.values.toList()[i]);
                          },
                        //İlgili şıkkın bool değernini verir. Fonksiyona çalışması için.
                        child: OptionCard(
                          option: extractedData[index].options.keys.toList()[i],
                          //Listenin key değerlerinin stringini text olarak alır ve yazdırır. 20, 30, 4, 50 vb...
                          color: isPressed ? (extractedData[index].options.values.toList()[i] == true ? correct : incorrect) : neutral,
                        ),
                      ),
                  ],
                ),
              ),
              floatingActionButton: GestureDetector(
                onTap: () {
                  nextQuestion(extractedData.length);
                },
                child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: NextButton()),
              ),
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.centerFloat,
            );
          }
        } else {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, // Dikeyde ortalama
              crossAxisAlignment: CrossAxisAlignment.center, // Yatayda ortalama
              children: [
                const CircularProgressIndicator(),
                const SizedBox(height: 20.0),
                Text(
                  'Please wait while Question are loading...',
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    decoration: TextDecoration.none,
                    fontSize: 18.0,
                  ),
                ),
              ],
            ),
          );
        }
        return const Center(
          child: Text('No Data'),
        );
      },
    );
  }
}




/*List<Question> _question = [
    Question(
      id: '10',
      title: 'What is 2 + 2 ?',
      options: {'5': false, '30': false, '4': true, '10': false},
    ),
    Question(
      id: '11',
      title: 'What is 10 + 20 ?',
      options: {'50': false, '30': true, '40': false, '10': false},
    )
  ];*/