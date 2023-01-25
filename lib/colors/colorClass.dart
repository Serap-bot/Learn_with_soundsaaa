import 'package:flutter/material.dart';
int activeQuestion = 0;

class colors {

 List<String> get ColorQuestion => _ColorQuestion;

  List <Color> _color = [
  Colors.pink,
  Colors.white,
  Colors.blue,
  Colors.purple,
  Colors.green,
  Colors.brown,
  Colors.orange,
  Colors.black,
  Colors.yellow,
  Colors.grey,
 ];

 List<Color> get color => _color;

 List<String> get colorAnswer => _colorAnswer;

/* List <int> _colorCode = [
  0xFFE91E63,
  0xFFFFFFFF,
  0xFF2196F3,
  0xFF9C27B0,
  0xFF4CAF50,
  0xFF795548,
  0xFFFF9800,
  0xFF000000,
  0xFFFFEB3B,
  0xFF9E9E9E,
 ];
*/
Map<String, Color> _M = {
 'Pembe': Colors.pink,
 'Beyaz' : Colors.white,
 'Mavi' : Colors.blue,
 'Mor' : Colors.purple,
 'Yeşil' : Colors.green,
 'Kahverengi' : Colors.brown,
 'Turuncu' : Colors.orange,
 'Siyah' : Colors.black,
 'Sarı' : Colors.yellow,
 'Gri' : Colors.grey,
};
 Map<String, Color> get M => _M;
 List <String> _ColorQuestion = [
  "Pembe renk hangisidir?",
  "Beyaz renk hangisidir?",
  "Mavi renk hangisidir?",
  "Mor renk hangisidir?",
  "Yeşil renk hangisidir?",
  "Kahverengi renk hangisidir?",
  "Turuncu renk hangisidir?",
  "Siyah renk hangisidir?",
  "Sarı renk hangisidir?",
  "Gri renk hangisidir?",
 ];

 List <String> _colorAnswer =[
  'Pembe',
  'Beyaz',
  'Mavi',
  'Mor',
  'Yeşil',
  'Kahverengi',
  'Turuncu',
  'Siyah',
  'Sarı',
  'Gri',
 ];

}


class ColorQuestion{
 String soru;
 Color a;
 Color b;
 Color cevap;

 ColorQuestion(this.soru,  this.a, this.b, this.cevap){
 }
}

Test X = new Test();

class Test{

 List<ColorQuestion> ColorQuestionsAnswers=[
  ColorQuestion('Pembe renk hangisidir?', Colors.pink, Colors.black, Colors.pink),
  ColorQuestion('Beyaz renk hangisidir?', Colors.orange, Colors.white, Colors.white),
  ColorQuestion('Mavi renk hangisidir?', Colors.grey, Colors.blue, Colors.blue),
  ColorQuestion('Mor renk hangisidir?', Colors.purple, Colors.brown, Colors.purple),
  ColorQuestion('Yeşil renk hangisidir?', Colors.yellow, Colors.green, Colors.green),
  ColorQuestion('Kahverengi renk hangisidir?', Colors.brown, Colors.green, Colors.brown),
  ColorQuestion('Turuncu renk hangisidir?', Colors.orange, Colors.blue, Colors.orange),
  ColorQuestion('Siyah renk hangisidir?', Colors.black, Colors.white, Colors.black),
  ColorQuestion('Sarı renk hangisidir?', Colors.purple, Colors.yellow, Colors.yellow),
  ColorQuestion('Gri renk hangisidir?', Colors.grey, Colors.pink, Colors.grey),
 ];

 void sonrakiSoru(){
  if(ColorQuestionsAnswers.length-1 > activeQuestion){
   activeQuestion++;
  }else{
   activeQuestion = 0;
  }
  print(activeQuestion);
 }

 String soruYaz(){
  print(X.ColorQuestionsAnswers[activeQuestion].soru);
  return X.ColorQuestionsAnswers[activeQuestion].soru;
 }

 Color aSikkiYaz(){
  print(X.ColorQuestionsAnswers[activeQuestion].a);
  return X.ColorQuestionsAnswers[activeQuestion].a;
 }

 Color bSikkiYaz(){
  print(X.ColorQuestionsAnswers[activeQuestion].b);
  return X.ColorQuestionsAnswers[activeQuestion].b;
 }

 void cevapKontrol (Color kullaniciSecim) {

     if(X.ColorQuestionsAnswers[activeQuestion].cevap == kullaniciSecim){
      print(kullaniciSecim);
      sonrakiSoru();
      print('Doğru');
    }else{
     // print(kullaniciSecim);
      print('Yanlış');
     }
 }

}

