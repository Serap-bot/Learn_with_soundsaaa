int activeQuestion = 0;



class furnitures {

  List _furniture = <String>[
    'Çatal',
    'Kaşık',
    'Tabak',
    'Bardak',
    'Masa',
    'Koltuk',
    'Sandalye',
    'Yatak',
    'Dolap',
    'Yastık',
  ];

  List get furniture => _furniture;
}

//Class furniture Question
  class FurnitureQuestion{
  //Fields
  String soru;
  String a;
  String b;
  String cevap;


  //Yapıcı method
  FurnitureQuestion(this.soru, this.a, this.b, this.cevap){
  }
}

// Class furniture test
FurnitureTest X = new FurnitureTest();

class FurnitureTest {

  List <FurnitureQuestion> FurnitureQuestionsAnswers = [
    FurnitureQuestion('Çatal hangisidir?','images/furniture1.png','images/furniture7.png','images/furniture1.png'),
    FurnitureQuestion('Kaşık hangisidir?','images/furniture8.png','images/furniture2.png','images/furniture2.png'),
    FurnitureQuestion('Tabak hangisidir?','images/furniture9.png','images/furniture3.png','images/furniture3.png'),
    FurnitureQuestion('Bardak hangisidir?','images/furniture4.png','images/furniture10.png','images/furniture4.png'),
    FurnitureQuestion('Masa hangisidir?','images/furniture2.png','images/furniture5.png','images/furniture5.png'),
    FurnitureQuestion('Koltuk hangisidir?','images/furniture6.png','images/furniture1.png','images/furniture6.png'),
    FurnitureQuestion('Sandalye hangisidir?','images/furniture4.png','images/furniture7.png','images/furniture7.png'),
    FurnitureQuestion('Yatak hangisidir?','images/furniture8.png','images/furniture3.png','images/furniture8.png'),
    FurnitureQuestion('Dolap hangisidir?','images/furniture5.png','images/furniture9.png','images/furniture9.png'),
    FurnitureQuestion('Yastık hangisidir?','images/furniture10.png','images/furniture6.png','images/furniture10.png'),
  ];

  void sonrakiSoru(){
    if(FurnitureQuestionsAnswers.length-1 > activeQuestion){
      activeQuestion++;
  }else{
      activeQuestion = 0;
    }
  }

  String soruYaz(){
    return X.FurnitureQuestionsAnswers[activeQuestion].soru;
  }

  String aSikkiYaz(){
    return X.FurnitureQuestionsAnswers[activeQuestion].a;
  }

  String bSkkiYaz(){
    return X.FurnitureQuestionsAnswers[activeQuestion].b;
  }

  void cevapKontrol(String kullaniciSecimi){
    if(kullaniciSecimi == X.FurnitureQuestionsAnswers[activeQuestion].cevap){
      sonrakiSoru();
      print('Doğru');
  }else{
      print('Yanlış');
    }
  }


//String cevap='';
//String soru='';

// furnitures({required this.cevap, required this.soru});

/*List furnitureTest = <furnitures>[
    furnitures(cevap: 'Çatal', soru: 'Çatal hangisidir?'),
    furnitures(cevap: 'Kaşık', soru: 'Kaşık hangisidir?'),
    furnitures(cevap: 'Tabak', soru: 'Tabak hangisidir?'),
    furnitures(cevap: 'Bardak', soru: 'Bardak hangisidir?'),
    furnitures(cevap: 'Masa', soru: 'Masa hangisidir?'),
    furnitures(cevap: 'Koltuk', soru: 'Koltuk hangisidir?'),
    furnitures(cevap: 'Sandalye', soru: 'Sandalye hangisidir?'),
    furnitures(cevap: 'Yatak', soru: 'Yatak hangisidir?'),
    furnitures(cevap: 'Dolap', soru: 'Dolap hangisidir?'),
    furnitures(cevap: 'Yastık', soru: 'Yastık hangisidir?'),
  ];*/

// Map<String, String> FurnitureMatch = Map.fromIterables(furniture, furnitureQuestion);

/*List furnitureQuestion = <String>[
   'Çatal hangisidir?',
    'Kaşık hangisidir?',
    'Tabak hangisidir?',
    'Bardak hangisidir?',
    'Masa hangisidir?',
    'Koltuk hangisidir?',
    'Sandalye hangisidir?',
    'Yatak hangisidir?',
    'Dolap hangisidir?',
    'Yastık hangisidir?',
];
*/


}