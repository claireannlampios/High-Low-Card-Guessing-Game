import 'dart:math';

class CardValue {
  int randomIndex = 0;
  List cards = [
    ['assets/2C.png', 2],
    ['assets/2D.png', 2],
    ['assets/2H.png', 2],
    ['assets/2S.png', 2],
    ['assets/3C.png', 3],
    ['assets/3D.png', 3],
    ['assets/3H.png', 3],
    ['assets/3S.png', 3],
    ['assets/4C.png', 4],
    ['assets/4D.png', 4],
    ['assets/4H.png', 4],
    ['assets/4S.png', 4],
    ['assets/5C.png', 5],
    ['assets/5D.png', 5],
    ['assets/5H.png', 5],
    ['assets/5S.png', 5],
    ['assets/6C.png', 6],
    ['assets/6D.png', 6],
    ['assets/6H.png', 6],
    ['assets/6S.png', 6],
    ['assets/7C.png', 7],
    ['assets/7D.png', 7],
    ['assets/7H.png', 7],
    ['assets/7S.png', 7],
    ['assets/8C.png', 8],
    ['assets/8D.png', 8],
    ['assets/8H.png', 8],
    ['assets/8S.png', 8],
    ['assets/9C.png', 9],
    ['assets/9D.png', 9],
    ['assets/9H.png', 9],
    ['assets/9S.png', 9],
    ['assets/10C.png', 10],
    ['assets/10D.png', 10],
    ['assets/10H.png', 10],
    ['assets/10S.png', 10],
    ['assets/AC.png', 1],
    ['assets/AD.png', 1],
    ['assets/AH.png', 1],
    ['assets/AS.png', 1],
    ['assets/JC.png', 11],
    ['assets/JD.png', 11],
    ['assets/JH.png', 11],
    ['assets/JS.png', 11],
    ['assets/QC.png', 12],
    ['assets/QD.png', 12],
    ['assets/QH.png', 12],
    ['assets/QS.png', 12],
    ['assets/KC.png', 13],
    ['assets/KD.png', 13],
    ['assets/KH.png', 13],
    ['assets/KS.png', 13],
  ];

  List getRandom() {
    randomIndex = Random().nextInt(13 * 4);
    return [cards[randomIndex][0], cards[randomIndex][1]];
  }
}
