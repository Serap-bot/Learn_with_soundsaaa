int activeQuestion = 0;

class numbers {
  final Map<int, String> _NumberMatch = {
    0: "0 rakamı hangisidir?",
    1: "1 rakamı hangisidir?",
    2: "2 rakamı hangisidir?",
    3: "3 rakamı hangisidir?",
    4: "4 rakamı hangisidir?",
    5: "5 rakamı hangisidir?",
    6: "6 rakamı hangisidir?",
    7: "7 rakamı hangisidir?",
    8: "8 rakamı hangisidir?",
    9: "9 rakamı hangisidir?",
  };

  Map<int, String> get NumberMatch => _NumberMatch;

  List<int> _number = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
  ];

  List<int> get number => _number;
}

class NumberQuestion{
  String soru;
  String a;
  String b;
  String cevap;

  NumberQuestion(this.soru, this.a, this.b, this.cevap){

  }
}


NumberTest X = new NumberTest();

class NumberTest {
  List <NumberQuestion> NumberQuestionsAnswers = [
    NumberQuestion('Bir rakamı hangisidir?','images/numbers1.png','images/numbers7.png','images/numbers1.png'),
    NumberQuestion('İki rakamı hangisidir?','images/numbers8.png','images/numbers2.png','images/numbers2.png'),
    NumberQuestion('Üç rakamı hangisidir?','images/numbers9.png','images/numbers3.png','images/numbers3.png'),
    NumberQuestion('Dört rakamı hangisidir?','images/numbers4.png','images/numbers0.png','images/numbers4.png'),
    NumberQuestion('Beş rakamı hangisidir?','images/numbers2.png','images/numbers5.png','images/numbers5.png'),
    NumberQuestion('Altı rakamı hangisidir?','images/numbers6.png','images/numbers1.png','images/numbers6.png'),
    NumberQuestion('Yedi rakamı hangisidir?','images/numbers4.png','images/numbers7.png','images/numbers7.png'),
    NumberQuestion('Sekiz rakamı hangisidir?','images/numbers8.png','images/numbers3.png','images/numbers8.png'),
    NumberQuestion('Dokuz rakamı hangisidir?','images/numbers5.png','images/numbers9.png','images/numbers9.png'),
    NumberQuestion('Sıfır rakamı hangisidir?','images/numbers0.png','images/numbers6.png','images/numbers0.png'),
  ];

  void sonrakiSoru(){
    if(NumberQuestionsAnswers.length-1 > activeQuestion){
      activeQuestion++;
    }else{
      activeQuestion = 0;
    }
  }

  String soruYaz(){
    return X.NumberQuestionsAnswers[activeQuestion].soru;
  }

  String aSikkiYaz(){
    return X.NumberQuestionsAnswers[activeQuestion].a;
  }

  String bSkkiYaz(){
    return X.NumberQuestionsAnswers[activeQuestion].b;
  }

  void cevapKontrol(String kullaniciSecimi){
    if(kullaniciSecimi == X.NumberQuestionsAnswers[activeQuestion].cevap){
      sonrakiSoru();
      print('Doğru');
    }else{
      print('Yanlış');
    }
  }

}
