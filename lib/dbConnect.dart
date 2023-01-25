import 'dart:convert';
import 'package:http/http.dart' as http;
import '/questionModel.dart';

class DBconnect {
  final url = Uri.parse('https://learn-with-sounds-default-rtdb.firebaseio.com/questions.json');
      //   https://learn-with-sounds-default-rtdb.firebaseio.com/

  Future<void> addQuestion(Question question) async {
    // Soruyu gidip ekle.
    http.post(url,
        body: json.encode({
          'title': question.title,
          'options': question.options,
        }));
  }

  Future<List<Question>> fetchQuestion() async {
    //Soruyu gidip getir.
    return http.get(url).then((response) {
      var data = json.decode(response.body) as Map<String, dynamic>; // gelen dynamic, dynamic verileri çevirdik.
      List<Question> newQuestions = []; // Oluşturduğumuz soruları saklar.
      data.forEach((key, value) {
        var newQuestion = Question(
          id: key,
          title: value['title'],
          options: Map.castFrom(value['options']),);
        newQuestions.add(newQuestion);
      });
      return newQuestions;
    });
  }
}
