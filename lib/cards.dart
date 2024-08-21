class Card {
  String faceValue = "";
  String suit = "";
  @override
  String toString() {
    // TODO: implement toString
    return "card value of this=" + this.faceValue + "," + this.suit;
  }
}

void main() {
  var faceValues = [
    'Ace',
    'King',
    'Queen',
    'Jack',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10'
  ];
  var suits = ['Heart', 'Spade', 'Diamond', 'Club'];

  // var x = Card();
  // x.faceValue = '3';
  // x.suit = '7';

  // var y = Card();
  // y.faceValue = '5';
  // y.suit = '8';

  // var z = Card();
  // z.faceValue = '1';
  // z.suit = '4';
  // print("card value of x=" + x.faceValue + "," + x.suit);
  // print("card value of y=" + y.faceValue + "," + y.suit);
  // print("card value of z=" + z.faceValue + "," + z.suit);

  // var a = x;
  // a.faceValue = '6';
  // a.suit = '9';
  // print("card value of a=" + a.faceValue + "," + a.suit);
  // print("card value of x=" + x.faceValue + "," + x.suit);
  // print(y == a);
  var deck = <Card>[];
  for (var x = 0; x < faceValues.length; x++) {
    var d = faceValues[x];
    for (var v = 0; v < suits.length; v++) {
      var j = suits[v];
      var t = Card();
      deck.add(t);
      t.faceValue = d;
      t.suit = j;
      //print("card value of t=" + t.faceValue + "," + t.suit);
    }

    // var i = Card();
    // i.faceValue = d;
    // deck.add(i);
  }
  for (var b = 0; b < deck.length; b++) {
    var w = deck[b];
    print("card value of w=" + w.faceValue + "," + w.suit);
  }
  // for (var k = 0; k < deck.length; k++) {
  //   var l = deck[k];
  //   print("card value of l=" + l.faceValue + "," + l.suit);
  // }

  List<Card> getHand(int handSize) {
    var hand = <Card>[];
    for (var v = 0; v < handSize; v++) {
      var r = deck.removeAt(0);
      hand.add(r);
    }
    return hand;
  }

  deck.shuffle();
  var handA = getHand(5);
  var handB = getHand(5);
  print(handA);
  print(handB);
  print(deck.length);
}
